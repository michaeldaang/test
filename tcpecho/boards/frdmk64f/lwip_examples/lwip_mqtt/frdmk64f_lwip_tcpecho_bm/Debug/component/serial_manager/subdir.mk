################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/serial_manager/fsl_component_serial_manager.c \
../component/serial_manager/fsl_component_serial_port_uart.c 

OBJS += \
./component/serial_manager/fsl_component_serial_manager.o \
./component/serial_manager/fsl_component_serial_port_uart.o 

C_DEPS += \
./component/serial_manager/fsl_component_serial_manager.d \
./component/serial_manager/fsl_component_serial_port_uart.d 


# Each subdirectory must supply rules for building sources it contributes
component/serial_manager/%.o: ../component/serial_manager/%.c component/serial_manager/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DFRDM_K64F -DFREEDOM -DLWIP_DISABLE_PBUF_POOL_SIZE_SANITY_CHECKS=1 -DSERIAL_PORT_TYPE_UART=1 -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\board" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\source" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\mdio" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\phy" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\lwip\contrib\apps\tcpecho_raw" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\lwip\port" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\lwip\src" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\lwip\src\include" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\drivers" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\utilities" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\device" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\component\uart" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\component\serial_manager" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\component\lists" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_tcpecho_bm\CMSIS" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


