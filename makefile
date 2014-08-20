#
# Makefile for kumquat
#

local-zip-file                    := stockrom.zip
local-out-zip-file                := MIUI_kumquat.zip
local-miui-modifed-apps           :=
local-modified-apps				  :=
local-miui-removed-apps			  :=
# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density 				      := HDPI
local-phone-apps				  :=
local-pre-zip			          := local-zip-misc
include $(PORT_BUILD)/porting.mk
local-zip-misc: