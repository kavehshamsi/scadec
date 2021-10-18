################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../sloeber.ino.cpp 

LINK_OBJ += \
./sloeber.ino.cpp.o 

CPP_DEPS += \
./sloeber.ino.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
sloeber.ino.cpp.o: ../sloeber.ino.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	${A.RECIPE.HOOKS.SKETCH.PREBUILD.1.PATTERN}
		"/home/kaveh/Tools/arduino-1.8.12/hardware/teensy/../tools/arm/bin/arm-none-eabi-g++" -c -Og -g -Wall -ffunction-sections -fdata-sections -nostdlib -MMD -fno-exceptions -fpermissive -felide-constructors -std=gnu++14 -Wno-error=narrowing -fno-rtti -mthumb -mcpu=cortex-m4 -fsingle-precision-constant -D__MK20DX256__ -DTEENSYDUINO=152 -DARDUINO=10812 -DARDUINO_TEENSY32 -DF_CPU=72000000 -DUSB_SERIAL -DLAYOUT_US_ENGLISH "-I/home/kaveh/Development/eclipse/scadec/platform/sloeber/sca_cw808_xl9/Release/pch"   -I"/home/kaveh/Tools/arduino-1.8.12/hardware/teensy/avr/cores/teensy3" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"

	@echo 'Finished building: $<'
	@echo ' '


