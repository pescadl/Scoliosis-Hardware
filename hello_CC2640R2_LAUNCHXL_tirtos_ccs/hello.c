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


#define ADC_RAW_VALUES_SIZE 1024;
uint16_t adc_raw_values[ADC_RAW_VALUES_SIZE];


// adc_task struct
Task_Struct adc_task_struct;
#pragma DATA_ALIGN(adc_task_stack, 8)
#define STACKSIZE 1024
static uint8_t adc_task_stack[STACKSIZE];


void adc_task_function(void)
{
    ADC_init();
    Display_init();
}

int main(void)
{
    Board_initGeneral();
    GPIO_init();

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
