################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CFG_SRCS += \
../hello.cfg 

CMD_SRCS += \
../CC2640R2_LAUNCHXL_TIRTOS.cmd 

C_SRCS += \
../CC2640R2_LAUNCHXL.c \
../CC2640R2_LAUNCHXL_fxns.c \
../ccfg.c \
../hello.c 

GEN_CMDS += \
./configPkg/linker.cmd 

GEN_FILES += \
./configPkg/linker.cmd \
./configPkg/compiler.opt 

GEN_MISC_DIRS += \
./configPkg/ 

C_DEPS += \
./CC2640R2_LAUNCHXL.d \
./CC2640R2_LAUNCHXL_fxns.d \
./ccfg.d \
./hello.d 

GEN_OPTS += \
./configPkg/compiler.opt 

OBJS += \
./CC2640R2_LAUNCHXL.obj \
./CC2640R2_LAUNCHXL_fxns.obj \
./ccfg.obj \
./hello.obj 

GEN_MISC_DIRS__QUOTED += \
"configPkg\" 

OBJS__QUOTED += \
"CC2640R2_LAUNCHXL.obj" \
"CC2640R2_LAUNCHXL_fxns.obj" \
"ccfg.obj" \
"hello.obj" 

C_DEPS__QUOTED += \
"CC2640R2_LAUNCHXL.d" \
"CC2640R2_LAUNCHXL_fxns.d" \
"ccfg.d" \
"hello.d" 

GEN_FILES__QUOTED += \
"configPkg\linker.cmd" \
"configPkg\compiler.opt" 

C_SRCS__QUOTED += \
"../CC2640R2_LAUNCHXL.c" \
"../CC2640R2_LAUNCHXL_fxns.c" \
"../ccfg.c" \
"../hello.c" 


