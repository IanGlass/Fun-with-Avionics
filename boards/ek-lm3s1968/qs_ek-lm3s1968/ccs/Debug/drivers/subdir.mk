################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/drivers/class-d.c \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/drivers/rit128x96x4.c 

OBJS += \
./drivers/class-d.obj \
./drivers/rit128x96x4.obj 

C_DEPS += \
./drivers/class-d.pp \
./drivers/rit128x96x4.pp 

OBJS__QTD += \
".\drivers\class-d.obj" \
".\drivers\rit128x96x4.obj" 

C_DEPS__QTD += \
".\drivers\class-d.pp" \
".\drivers\rit128x96x4.pp" 

C_SRCS_QUOTED += \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/drivers/class-d.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/drivers/rit128x96x4.c" 


# Each subdirectory must supply rules for building sources it contributes
drivers/class-d.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/drivers/class-d.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="drivers/class-d.pp" --obj_directory="drivers" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

drivers/rit128x96x4.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/drivers/rit128x96x4.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="drivers/rit128x96x4.pp" --obj_directory="drivers" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


