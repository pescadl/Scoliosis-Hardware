################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.4.LTS/bin/armcl" -mv7M3 --code_state=16 --float_support=vfplib -me --include_path="C:/ti/simplelink_cc2640r2_sdk_2_30_00_28/source/ti/devices/cc26x0r2/driverlib" --include_path="C:/Users/maris/Documents/GitHub/Scoliosis-Hardware/empty_CC2640R2_LAUNCHXL_tirtos_ccs" --include_path="C:/ti/simplelink_cc2640r2_sdk_2_30_00_28/source/ti/posix/ccs" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.4.LTS/include" --define=DeviceFamily_CC26X0R2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


