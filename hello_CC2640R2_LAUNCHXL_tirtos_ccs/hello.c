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

void adc_task_function0(void);
void adc_task_function1(void);

// adc_task struct
Task_Struct adc_task_struct0;
#pragma DATA_ALIGN(adc_task_stack0, 8)
#define STACKSIZE 1024
static uint8_t adc_task_stack0[STACKSIZE];

Task_Struct adc_task_struct1;
#pragma DATA_ALIGN(adc_task_stack1, 8)
static uint8_t adc_task_stack1[STACKSIZE];


uint16_t adcValue0;
uint32_t adcValue0MicroVolt;
#define ADC_RAW_VALUES_SIZE 1024;
//uint16_t adc_raw_values[ADC_RAW_VALUES_SIZE];
uint16_t adc_raw_values_index = 0;

uint16_t adcValue1;
uint32_t adcValue1MicroVolt;


static Display_Handle display;

void adc_task_function0(void)
{
   ADC_Handle   adc;
   ADC_Params   params;
   int_fast16_t res;


    while(1) {
        GPIO_toggle(Board_GPIO_LED0);

        ADC_Params_init(&params);
        adc = ADC_open(Board_ADC0, &params);

        if (adc == NULL) {
            Display_printf(display, 0, 0, "Error initializing ADC channel 0\n");
            while (1);
        }

        // Blocking mode conversion
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

        Task_sleep(5000 * (1000/Clock_tickPeriod));
    }

    return (NULL);
}

void adc_task_function1(void)
{
    ADC_Handle   adc;
    ADC_Params   params;
    int_fast16_t res;

    while(1) {
        GPIO_toggle(Board_GPIO_LED1);

        ADC_Params_init(&params);
        adc = ADC_open(Board_ADC1, &params);

        if (adc == NULL) {
            Display_printf(display, 0, 0, "Error initializing ADC channel 1\n");
            while (1);
        }

        // Blocking mode conversion
        res = ADC_convert(adc, &adcValue1);

        if (res == ADC_STATUS_SUCCESS) {

            adcValue1MicroVolt = ADC_convertRawToMicroVolts(adc, adcValue1);

            Display_printf(display, 0, 0, "ADC channel 1 raw result: %d\n", adcValue1);
            Display_printf(display, 0, 0, "ADC channel 1 convert result: %d uV\n",
                adcValue1MicroVolt);
        }
        else {
            Display_printf(display, 0, 0, "ADC channel 1 convert failed\n");
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
    ADC_init();


    GPIO_setConfig(Board_GPIO_LED0, GPIO_CFG_OUT_STD | GPIO_CFG_OUT_LOW);
    GPIO_write(Board_GPIO_LED0, Board_GPIO_LED_ON);
    GPIO_setConfig(Board_GPIO_LED1, GPIO_CFG_OUT_STD | GPIO_CFG_OUT_LOW);
    GPIO_write(Board_GPIO_LED1, Board_GPIO_LED_ON);


    // Open the display for output
    display = Display_open(Display_Type_UART, NULL);
    if (display == NULL) {
        // Failed to open display driver
        while (1);
    }

    // Setup adc_task
    Task_Params adc_task_params0;
    Task_Params_init(&adc_task_params0);
    adc_task_params0.stackSize = STACKSIZE;
    adc_task_params0.priority = 2;
    adc_task_params0.stack = &adc_task_stack0;
    Task_construct(&adc_task_struct0, adc_task_function0, &adc_task_params0, NULL);

    Task_Params adc_task_params1;
    Task_Params_init(&adc_task_params1);
    adc_task_params1.stackSize = STACKSIZE;
    adc_task_params1.priority = 2;
    adc_task_params1.stack = &adc_task_stack1;
    Task_construct(&adc_task_struct1, adc_task_function1, &adc_task_params1, NULL);


    /* Start kernel. */
    BIOS_start();

    return (0);
}
