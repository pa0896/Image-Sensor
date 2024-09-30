################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Camera_driver/src/OV2640.cpp \
../Camera_driver/src/OV2640_regs.cpp \
../Camera_driver/src/SPI_camera.cpp 

OBJS += \
./Camera_driver/src/OV2640.o \
./Camera_driver/src/OV2640_regs.o \
./Camera_driver/src/SPI_camera.o 

CPP_DEPS += \
./Camera_driver/src/OV2640.d \
./Camera_driver/src/OV2640_regs.d \
./Camera_driver/src/SPI_camera.d 


# Each subdirectory must supply rules for building sources it contributes
Camera_driver/src/%.o Camera_driver/src/%.su Camera_driver/src/%.cyclo: ../Camera_driver/src/%.cpp Camera_driver/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m0plus -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G070xx -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I"/home/ampellicht/Dokumente/Nucleo STM Board Datein/Arbeitsraum/Hand Control/Camera_driver" -I"/home/ampellicht/Dokumente/Nucleo STM Board Datein/Arbeitsraum/Hand Control/App" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano_c_standard_cpp.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Camera_driver-2f-src

clean-Camera_driver-2f-src:
	-$(RM) ./Camera_driver/src/OV2640.cyclo ./Camera_driver/src/OV2640.d ./Camera_driver/src/OV2640.o ./Camera_driver/src/OV2640.su ./Camera_driver/src/OV2640_regs.cyclo ./Camera_driver/src/OV2640_regs.d ./Camera_driver/src/OV2640_regs.o ./Camera_driver/src/OV2640_regs.su ./Camera_driver/src/SPI_camera.cyclo ./Camera_driver/src/SPI_camera.d ./Camera_driver/src/SPI_camera.o ./Camera_driver/src/SPI_camera.su

.PHONY: clean-Camera_driver-2f-src

