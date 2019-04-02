################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-1103652863:
	@$(MAKE) --no-print-directory -Onone -f TOOLS/subdir_rules.mk build-1103652863-inproc

build-1103652863-inproc: ../TOOLS/app_ble.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_51_01_18_core/xs" --xdcpath="C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source;C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/kernel/tirtos/packages;C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M3 -p ti.platforms.simplelink:CC2640R2F -r release -c "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS" --compileOptions "-mv7M3 --code_state=16 -me -O4 --opt_for_speed=0 --include_path=\"C:/Users/maris/Documents/GitHub/Scoliosis-Hardware/ble5_simple_peripheral_cc2640r2lp_app\" --include_path=\"C:/Users/maris/Documents/GitHub/Scoliosis-Hardware/ble5_simple_peripheral_cc2640r2lp_app/Application\" --include_path=\"C:/Users/maris/Documents/GitHub/Scoliosis-Hardware/ble5_simple_peripheral_cc2640r2lp_app/Startup\" --include_path=\"C:/Users/maris/Documents/GitHub/Scoliosis-Hardware/ble5_simple_peripheral_cc2640r2lp_app/PROFILES\" --include_path=\"C:/Users/maris/Documents/GitHub/Scoliosis-Hardware/ble5_simple_peripheral_cc2640r2lp_app/Include\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/controller/cc26xx/inc\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/inc\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/rom\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/common/cc26xx\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/icall/inc\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/target\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/hal/src/target/_common\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/hal/src/target/_common/cc26xx\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/hal/src/inc\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/heapmgr\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/icall/src/inc\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/osal/src/inc\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/services/src/saddr\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/ble5stack/services/src/sdata\" --include_path=\"C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source/ti/devices/cc26x0r2\" --include_path=\"C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include\" --define=DeviceFamily_CC26X0R2 -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi " "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: build-1103652863 ../TOOLS/app_ble.cfg
configPkg/compiler.opt: build-1103652863
configPkg/: build-1103652863


