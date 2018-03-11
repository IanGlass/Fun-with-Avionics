################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_autobaud.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_can.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_check.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_decrypt.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_enet.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_flash.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_i2c.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_main.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_packet.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_ssi.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_uart.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_usb.c \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_usbfuncs.c 

CMD_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_link_ccs.cmd 

S_SRCS += \
C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_startup_ccs.s 

S_DEPS += \
./boot_loader/bl_startup_ccs.pp 

OBJS += \
./boot_loader/bl_autobaud.obj \
./boot_loader/bl_can.obj \
./boot_loader/bl_check.obj \
./boot_loader/bl_decrypt.obj \
./boot_loader/bl_enet.obj \
./boot_loader/bl_flash.obj \
./boot_loader/bl_i2c.obj \
./boot_loader/bl_main.obj \
./boot_loader/bl_packet.obj \
./boot_loader/bl_ssi.obj \
./boot_loader/bl_startup_ccs.obj \
./boot_loader/bl_uart.obj \
./boot_loader/bl_usb.obj \
./boot_loader/bl_usbfuncs.obj 

C_DEPS += \
./boot_loader/bl_autobaud.pp \
./boot_loader/bl_can.pp \
./boot_loader/bl_check.pp \
./boot_loader/bl_decrypt.pp \
./boot_loader/bl_enet.pp \
./boot_loader/bl_flash.pp \
./boot_loader/bl_i2c.pp \
./boot_loader/bl_main.pp \
./boot_loader/bl_packet.pp \
./boot_loader/bl_ssi.pp \
./boot_loader/bl_uart.pp \
./boot_loader/bl_usb.pp \
./boot_loader/bl_usbfuncs.pp 

OBJS__QTD += \
".\boot_loader\bl_autobaud.obj" \
".\boot_loader\bl_can.obj" \
".\boot_loader\bl_check.obj" \
".\boot_loader\bl_decrypt.obj" \
".\boot_loader\bl_enet.obj" \
".\boot_loader\bl_flash.obj" \
".\boot_loader\bl_i2c.obj" \
".\boot_loader\bl_main.obj" \
".\boot_loader\bl_packet.obj" \
".\boot_loader\bl_ssi.obj" \
".\boot_loader\bl_startup_ccs.obj" \
".\boot_loader\bl_uart.obj" \
".\boot_loader\bl_usb.obj" \
".\boot_loader\bl_usbfuncs.obj" 

C_DEPS__QTD += \
".\boot_loader\bl_autobaud.pp" \
".\boot_loader\bl_can.pp" \
".\boot_loader\bl_check.pp" \
".\boot_loader\bl_decrypt.pp" \
".\boot_loader\bl_enet.pp" \
".\boot_loader\bl_flash.pp" \
".\boot_loader\bl_i2c.pp" \
".\boot_loader\bl_main.pp" \
".\boot_loader\bl_packet.pp" \
".\boot_loader\bl_ssi.pp" \
".\boot_loader\bl_uart.pp" \
".\boot_loader\bl_usb.pp" \
".\boot_loader\bl_usbfuncs.pp" 

S_DEPS__QTD += \
".\boot_loader\bl_startup_ccs.pp" 

C_SRCS_QUOTED += \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_autobaud.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_can.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_check.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_decrypt.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_enet.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_flash.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_i2c.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_main.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_packet.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_ssi.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_uart.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_usb.c" \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_usbfuncs.c" 

S_SRCS_QUOTED += \
"C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_startup_ccs.s" 


# Each subdirectory must supply rules for building sources it contributes
boot_loader/bl_autobaud.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_autobaud.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_autobaud.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_can.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_can.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_can.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_check.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_check.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_check.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_decrypt.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_decrypt.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_decrypt.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_enet.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_enet.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_enet.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_flash.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_flash.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_flash.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_i2c.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_i2c.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_i2c.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_main.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_main.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_main.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_packet.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_packet.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_packet.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_ssi.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_ssi.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_ssi.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_startup_ccs.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_startup_ccs.s $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_startup_ccs.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_uart.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_uart.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_uart.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_usb.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_usb.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_usb.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

boot_loader/bl_usbfuncs.obj: C:/yagarto-ARM/my_proj/StellarisWare/boot_loader/bl_usbfuncs.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/TI_CCSv4/ccsv4/tools/compiler/tms470/bin/cl470" -mv7M3 -g -O2 --gcc --define=ccs --define=PART_LM3S1968 --include_path="C:/TI_CCSv4/ccsv4/tools/compiler/tms470/include" --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../.." --include_path="C:/yagarto-ARM/my_proj/StellarisWare/boards/ek-lm3s1968/boot_serial/ccs/../../../../boot_loader" --diag_warning=225 -me --gen_func_subsections --abi=eabi --code_state=16 --ual --preproc_with_compile --preproc_dependency="boot_loader/bl_usbfuncs.pp" --obj_directory="boot_loader" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


