################################################################################
#
# paho-mqtt-cpp
#
################################################################################

PAHO_MQTT_CPP_VERSION = 07a2ec44e47583ee19304c1275490831668b0a37
#PAHO_MQTT_CPP_SOURCE = eclipse-paho-mqtt-c-unix-$(PAHO_MQTT_CPP_VERSION).tar.gz
PAHO_MQTT_CPP_SITE = git://github.com/eclipse/paho.mqtt.cpp.git
PAHO_MQTT_CPP_LICENSE = EPLv1.0 or EDLv1.0
PAHO_MQTT_CPP_LICENSE_FILES = edl-v10 epl-v10
PAHO_MQTT_CPP_INSTALL_STAGING = YES

PAHO_MQTT_CPP_MAKE_OPTS += prefix=/usr

define PAHO_MQTT_CPP_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define PAHO_MQTT_CPP_INSTALL_STAGING_CMDS
	$(INSTALL) -D -d -m 644 $(@D)/lib \
		$(STAGING_DIR)/usr
endef

define PAHO_MQTT_CPP_INSTALL_TARGET_CMDS
	$(INSTALL) -D -d -m 644 $(@D)/lib \
		$(TARGET_DIR)/usr
endef

$(eval $(generic-package))
