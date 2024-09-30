################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../App/src/imager.cpp 

OBJS += \
./App/src/imager.o 

CPP_DEPS += \
./App/src/imager.d 


# Each subdirectory must supply rules for building sources it contributes
App/src/%.o App/src/%.su App/src/%.cyclo: ../App/src/%.cpp App/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m0plus -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G070xx -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I"/home/ampellicht/Dokumente/Nucleo STM Board Datein/Arbeitsraum/Hand Control/Camera_driver" -I"/home/ampellicht/Dokumente/Nucleo STM Board Datein/Arbeitsraum/Hand Control/App" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano_c_standard_cpp.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-App-2f-src

clean-App-2f-src:
	-$(RM) ./App/src/imager.cyclo ./App/src/imager.d ./App/src/imager.o ./App/src/imager.su

.PHONY: clean-App-2f-src

