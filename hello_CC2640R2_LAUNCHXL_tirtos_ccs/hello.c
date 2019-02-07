/* TI-RTOS Header files */
#include <stdint.h>
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Clock.h>
#include <ti/sysbios/knl/Task.h>

#include <ti/devices/cc26x0r2/driverlib/aon_rtc.h>
#include <ti/drivers/ADC.h>
#include <ti/drivers/GPIO.h>
#include <ti/display/Display.h>

/* Example/Board Header files */
#include "Board.h"


// adc_task struct
Task_Struct adc_task_struct;
#pragma DATA_ALIGN(adc_task_stack, 8)
#define STACKSIZE 1024
static uint8_t adc_task_stack[STACKSIZE];


uint16_t adcValue0;
uint32_t adcValue0MicroVolt;
#define ADC_RAW_VALUES_SIZE 1024;
//uint16_t adc_raw_values[ADC_RAW_VALUES_SIZE];
uint16_t adc_raw_values_index = 0;


static Display_Handle display;

void adc_task_function(void)
{
    ADC_Handle   adc;
    ADC_Params   params;
    int_fast16_t res;

    ADC_init();

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

int main(void)
{
    Board_initGeneral();
    GPIO_init();
    Display_init();

    /* Open the display for output */
    display = Display_open(Display_Type_UART, NULL);
    if (display == NULL) {
        /* Failed to open display driver */
        while (1);
    }

    // Setup adc_task
    Task_Params adc_task_params;
    Task_Params_init(&adc_task_params);
    adc_task_params.stackSize = STACKSIZE;
    adc_task_params.priority = 1;
    adc_task_params.stack = &adc_task_stack;
    Task_construct(&adc_task_struct, adc_task_function, &adc_task_params, NULL);

    /* Start kernel. */
    BIOS_start();

    return (0);
}
