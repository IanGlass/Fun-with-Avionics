################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/third_party/aes/aes.c 

OBJS += \
./third_party/aes/aes.obj 

C_DEPS += \
./third_party/aes/aes.pp 

OBJS__QTD += \
".\third_party\aes\aes.obj" 

C_DEPS__QTD += \
".\third_party\aes\aes.pp" 

C_SRCS_QUOTED += \
"C:/yagarto-ARM/my_proj/StellarisWare/third_party/aes/aes.c" 


# Each subdirectory must supply rules for building sources it contributes
third_party/aes/aes.obj: C:/yagarto-ARM/my_proj/StellarisWare/third_party/aes/aes.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_set_key/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_set_key/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_set_key/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="third_party/aes/aes.pp" --obj_directory="third_party/aes" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


