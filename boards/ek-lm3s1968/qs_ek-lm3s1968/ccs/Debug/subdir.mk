################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/game.c \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/images.c \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/qs_ek-lm3s1968.c \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/random.c \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/screen_saver.c \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/sounds.c \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/startup_ccs.c 

CMD_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/qs_ek-lm3s1968_ccs.cmd 

OBJS += \
./game.obj \
./images.obj \
./qs_ek-lm3s1968.obj \
./random.obj \
./screen_saver.obj \
./sounds.obj \
./startup_ccs.obj 

C_DEPS += \
./game.pp \
./images.pp \
./qs_ek-lm3s1968.pp \
./random.pp \
./screen_saver.pp \
./sounds.pp \
./startup_ccs.pp 

OBJS__QTD += \
".\game.obj" \
".\images.obj" \
".\qs_ek-lm3s1968.obj" \
".\random.obj" \
".\screen_saver.obj" \
".\sounds.obj" \
".\startup_ccs.obj" 

C_DEPS__QTD += \
".\game.pp" \
".\images.pp" \
".\qs_ek-lm3s1968.pp" \
".\random.pp" \
".\screen_saver.pp" \
".\sounds.pp" \
".\startup_ccs.pp" 

C_SRCS_QUOTED += \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/game.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/images.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/qs_ek-lm3s1968.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/random.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/screen_saver.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/sounds.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/startup_ccs.c" 


# Each subdirectory must supply rules for building sources it contributes
game.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/game.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="game.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

images.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/images.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="images.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

qs_ek-lm3s1968.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/qs_ek-lm3s1968.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="qs_ek-lm3s1968.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

random.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/random.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="random.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

screen_saver.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/screen_saver.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="screen_saver.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

sounds.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/sounds.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="sounds.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

startup_ccs.obj: C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/startup_ccs.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/qs_ek-lm3s1968/ccs/../../../.." --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="startup_ccs.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


