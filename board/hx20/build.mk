# -*- makefile -*-
# Copyright 2015 The Chromium OS Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#
# Board specific files build
#

# the IC is Microchip MEC1701
# external SPI is 512KB
# external clock is crystal
CHIP:=mchp

ifeq ($(HX20_ORB),y)
CHIP_FAMILY:=mec17xx
CHIP_VARIANT:=mec17xx_2E00
else
CHIP_FAMILY:=mec152x
# MEC1521 144 WFBGA
CHIP_VARIANT:=mec152x_3400
endif



CHIP_SPI_SIZE_KB:=512

board-y=board.o led.o
board-$(CONFIG_BATTERY_SMART)+=battery.o
board-$(CONFIG_USB_POWER_DELIVERY)+=usb_pd_policy.o
board-$(CONFIG_KEYBOARD_CUSTOMIZATION)+=keyboard_customization.o

