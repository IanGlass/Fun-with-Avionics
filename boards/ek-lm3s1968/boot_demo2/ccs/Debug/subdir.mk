################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/boot_demo2.c \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/startup_ccs.c 

CMD_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/boot_demo2_ccs.cmd 

OBJS += \
./boot_demo2.obj \
./startup_ccs.obj 

C_DEPS += \
./boot_demo2.pp \
./startup_ccs.pp 

OBJS__QTD += \
".\boot_demo2.obj" \
".\startup_ccs.obj" 

C_DEPS__QTD += \
".\boot_demo2.pp" \
".\startup_ccs.pp" 

C_SRCS_QUOTED += \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/boot_demo2.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/startup_ccs.c" 


# Each subdirectory must supply rules for building sources it contributes
boot_demo2.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/boot_demo2.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_demo2.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

startup_ccs.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/startup_ccs.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_demo2/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="startup_ccs.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


