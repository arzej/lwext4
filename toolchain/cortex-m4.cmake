# Name of the target
SET(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR cortex-m4)

# Toolchain settings
set(CMAKE_C_COMPILER    arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER  arm-none-eabi-g++)
set(AS                  arm-none-eabi-as)
set(AR                  arm-none-eabi-ar)
set(OBJCOPY             arm-none-eabi-objcopy)
set(OBJDUMP             arm-none-eabi-objdump)
set(SIZE                arm-none-eabi-size)

set(CMAKE_C_FLAGS   "-mthumb -mcpu=cortex-m4 -fno-builtin -Wall -std=gnu99 -fdata-sections -ffunction-sections" CACHE INTERNAL "c compiler flags")
set(CMAKE_CXX_FLAGS "-mthumb -mcpu=cortex-m4 -fno-builtin -Wall -fdata-sections -ffunction-sections" CACHE INTERNAL "cxx compiler flags")
set(CMAKE_ASM_FLAGS "-mthumb -mcpu=cortex-m4" CACHE INTERNAL "asm compiler flags")
set(CMAKE_EXE_LINKER_FLAGS "-nostartfiles -Wl,--gc-sections -mthumb -mcpu=cortex-m4" CACHE INTERNAL "exe link flags")



SET(CMAKE_C_FLAGS_DEBUG "-O2 -g -ggdb3" CACHE INTERNAL "c debug compiler flags")
SET(CMAKE_CXX_FLAGS_DEBUG "-O2 -g -ggdb3" CACHE INTERNAL "cxx debug compiler flags")
SET(CMAKE_ASM_FLAGS_DEBUG "-g -ggdb3" CACHE INTERNAL "asm debug compiler flags")

SET(CMAKE_C_FLAGS_RELEASE "-Os" CACHE INTERNAL "c release compiler flags")
SET(CMAKE_CXX_FLAGS_RELEASE "-Os" CACHE INTERNAL "cxx release compiler flags")
SET(CMAKE_ASM_FLAGS_RELEASE "" CACHE INTERNAL "asm release compiler flags")

