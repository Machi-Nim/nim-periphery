import std/os

import todo

const c_periphery = "c-periphery/src"
#proc `/`(a: string, b: string): string = a & "/" & b   # this functionality already exists

# --- Compilation config ---
# 1. Flag to include the headers path
{.passC: "-I" & currentSourcePath().parentDir().}

# 2. Flag for c-periphery to use the modern hardware driver (cdev)
{.passC: "-DPERIPHERY_GPIO_CDEV_SUPPORT=1".}

# 3. Instruction to compile .c files with the project
{.compile: c_periphery / "gpio_cdev_v1.c".}
{.compile: c_periphery / "gpio_cdev_v2.c".}
{.compile: c_periphery / "gpio_sysfs.c".}
{.compile: c_periphery / "gpio.c".}
{.compile: c_periphery / "i2c.c".}
{.compile: c_periphery / "led.c".}
{.compile: c_periphery / "mmio.c".}
{.compile: c_periphery / "pwm.c".}
{.compile: c_periphery / "serial.c".}
{.compile: c_periphery / "spi.c".}
{.compile: c_periphery / "version.c".}

# --- Type definitions (C mapping) ---
todo "TODO: Map C type definitions from c_periphery"

# --- Functions (Explicit Bridge) ---
todo "TODO: All the bridge logic for the C functions"