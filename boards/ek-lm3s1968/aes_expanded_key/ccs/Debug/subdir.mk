################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/aes_expanded_key.c \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/aes_iv.c \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/startup_ccs.c 

CMD_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/aes_expanded_key_ccs.cmd 

OBJS += \
./aes_expanded_key.obj \
./aes_iv.obj \
./startup_ccs.obj 

C_DEPS += \
./aes_expanded_key.pp \
./aes_iv.pp \
./startup_ccs.pp 

OBJS__QTD += \
".\aes_expanded_key.obj" \
".\aes_iv.obj" \
".\startup_ccs.obj" 

C_DEPS__QTD += \
".\aes_expanded_key.pp" \
".\aes_iv.pp" \
".\startup_ccs.pp" 

C_SRCS_QUOTED += \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/aes_expanded_key.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/aes_iv.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/startup_ccs.c" 


# Each subdirectory must supply rules for building sources it contributes
aes_expanded_key.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/aes_expanded_key.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="aes_expanded_key.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

aes_iv.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/aes_iv.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="aes_iv.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

startup_ccs.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/startup_ccs.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/aes_expanded_key/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="startup_ccs.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


