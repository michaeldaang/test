################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/api/api_lib.c \
../lwip/src/api/api_msg.c \
../lwip/src/api/err.c \
../lwip/src/api/if_api.c \
../lwip/src/api/netbuf.c \
../lwip/src/api/netdb.c \
../lwip/src/api/netifapi.c \
../lwip/src/api/sockets.c \
../lwip/src/api/tcpip.c 

OBJS += \
./lwip/src/api/api_lib.o \
./lwip/src/api/api_msg.o \
./lwip/src/api/err.o \
./lwip/src/api/if_api.o \
./lwip/src/api/netbuf.o \
./lwip/src/api/netdb.o \
./lwip/src/api/netifapi.o \
./lwip/src/api/sockets.o \
./lwip/src/api/tcpip.o 

C_DEPS += \
./lwip/src/api/api_lib.d \
./lwip/src/api/api_msg.d \
./lwip/src/api/err.d \
./lwip/src/api/if_api.d \
./lwip/src/api/netbuf.d \
./lwip/src/api/netdb.d \
./lwip/src/api/netifapi.d \
./lwip/src/api/sockets.d \
./lwip/src/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/api/%.o: ../lwip/src/api/%.c lwip/src/api/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DUSE_RTOS=1 -DUSB_STACK_FREERTOS -DPRINTF_ADVANCED_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -DFRDM_K64F -DFREEDOM -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DMCUXPRESSO_SDK -DCPU_MK64FN1M0VLL12_cm4 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\board" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\source" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\usb\host" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\usb\host\class" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\usb\include" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\component\osa" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\lwip\port" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\lwip\src" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\lwip\src\include" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\utilities" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\drivers" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\lwip\contrib\apps\ping" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\device" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\component\uart" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\component\serial_manager" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\component\lists" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\CMSIS" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\freertos\freertos_kernel\include" -I"C:\kod\kod ethernet\boards\frdmk64f\lwip_examples\lwip_mqtt\TCPTEST_lwip_dhcp_usb_freertos\freertos\freertos_kernel\portable\GCC\ARM_CM4F" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


