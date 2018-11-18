/*
 *  ======== empty.c ========
 */

#include <stdint.h>
#include <stddef.h>

#include <pthread.h>
#include <ti/sysbios/knl/Clock.h>
#include <ti/sysbios/knl/Task.h>

#include <ti/devices/cc26x0r2/driverlib/aon_rtc.h>
#include <ti/drivers/ADC.h>
#include <ti/display/Display.h>

#include "Board.h"

#define ADC_SAMPLE_COUNT  (10)
#define THREADSTACKSIZE   (768)

uint16_t adcValue0;
uint32_t adcValue0MicroVolt;

static Display_Handle display;

/*
 *  ======== threadFxn0 ========
 *  Open an ADC instance and get a sampling result from a one-shot conversion.
 */
void *threadFxn0(void *arg0)
{
    ADC_Handle   adc;
    ADC_Params   params;
    int_fast16_t res;

    while(1) {
        ADC_Params_init(&params);
        adc = ADC_open(Board_ADC0, &params);

        if (adc == NULL) {
            Display_printf(display, 0, 0, "Error initializing ADC channel 0\n");
            while (1);
        }

        /* Blocking mode conversion */
        res = ADC_convert(adc, &adcValue0);

        if (res == ADC_STATUS_SUCCESS) {

            adcValue0MicroVolt = ADC_convertRawToMicroVolts(adc, adcValue0);

            Display_printf(display, 0, 0, "ADC channel 0 raw result: %d\n", adcValue0);
            Display_printf(display, 0, 0, "ADC channel 0 convert result: %d uV\n",
                adcValue0MicroVolt);
        }
        else {
            Display_printf(display, 0, 0, "ADC channel 0 convert failed\n");
        }

        ADC_close(adc);

        uint32_t Elapsed_seconds = (uint32_t)((AONRTCCurrent64BitValueGet() & 0xFFFFFFFF00000000) >> 32);
        Display_printf(display, 0, 0, "time in seconds: %u\n", Elapsed_seconds);

        Task_sleep(1000 * (1000/Clock_tickPeriod));
    }

    return (NULL);
}

/*
 *  ======== mainThread ========
 */
void *mainThread(void *arg0)
{
    pthread_t           thread0, thread1;
    pthread_attr_t      attrs;
    struct sched_param  priParam;
    int                 retc;
    int                 detachState;

    /* Call driver init functions */
    ADC_init();
    Display_init();

    /* Open the display for output */
    display = Display_open(Display_Type_UART, NULL);
    if (display == NULL) {
        /* Failed to open display driver */
        while (1);
    }

    Display_printf(display, 0, 0, "Starting the acdsinglechannel example\n");

    /* Create application threads */
    pthread_attr_init(&attrs);

    detachState = PTHREAD_CREATE_DETACHED;
    /* Set priority and stack size attributes */
    retc = pthread_attr_setdetachstate(&attrs, detachState);
    if (retc != 0) {
        /* pthread_attr_setdetachstate() failed */
        while (1);
    }

    retc |= pthread_attr_setstacksize(&attrs, THREADSTACKSIZE);
    if (retc != 0) {
        /* pthread_attr_setstacksize() failed */
        while (1);
    }

    /* Create threadFxn0 thread */
    priParam.sched_priority = 1;
    pthread_attr_setschedparam(&attrs, &priParam);

    retc = pthread_create(&thread0, &attrs, threadFxn0, NULL);
    if (retc != 0) {
        /* pthread_create() failed */
        while (1);
    }

    return (NULL);
}
