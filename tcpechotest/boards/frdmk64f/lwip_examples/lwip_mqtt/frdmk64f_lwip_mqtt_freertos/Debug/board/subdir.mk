################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/board.c \
../board/clock_config.c \
../board/pin_mux.c 

OBJS += \
./board/board.o \
./board/clock_config.o \
./board/pin_mux.o 

C_DEPS += \
./board/board.d \
./board/clock_config.d \
./board/pin_mux.d 


# Each subdirectory must supply rules for building sources it contributes
board/%.o: ../board/%.c board/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -D_POSIX_SOURCE -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFRDM_K64F -DFREEDOM -DLWIP_DISABLE_PBUF_POOL_SIZE_SANITY_CHECKS=1 -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\board" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\source" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\mdio" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\phy" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\lwip\src\include\lwip\apps" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\lwip\port" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\lwip\src" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\lwip\src\include" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\drivers" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\utilities" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\device" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\component\uart" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\component\serial_manager" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\component\lists" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\CMSIS" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\freertos\freertos_kernel\include" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\frdmk64f_lwip_mqtt_freertos\freertos\freertos_kernel\portable\GCC\ARM_CM4F" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


