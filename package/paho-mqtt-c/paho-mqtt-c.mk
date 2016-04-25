################################################################################
#
# paho-mqtt-c
#
################################################################################

PAHO_MQTT_C_VERSION = 07cd71b2cdccd77c2bf60511509b08b8782f2188
#PAHO_MQTT_C_SOURCE = eclipse-paho-mqtt-c-unix-$(PAHO_MQTT_C_VERSION).tar.gz
PAHO_MQTT_C_SITE = git://github.com/eclipse/paho.mqtt.c.git
PAHO_MQTT_C_LICENSE = EPLv1.0 or EDLv1.0
PAHO_MQTT_C_LICENSE_FILES = edl-v10 epl-v10
PAHO_MQTT_C_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_PAHO_MQTT_C_OPENSSL),y)
PAHO_MQTT_C_DEPENDENCIES += openssl
endif

PAHO_MQTT_C_MAKE_OPTS += prefix=/usr

define PAHO_MQTT_C_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define PAHO_MQTT_C_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) $(PAHO_MQTT_C_MAKE_OPTS) \
		LDCONFIG="/sbin/ldconfig -r $(STAGING_DIR)" \
		DESTDIR=$(STAGING_DIR) install
endef

define PAHO_MQTT_C_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) $(PAHO_MQTT_C_MAKE_OPTS) \
		LDCONFIG="/sbin/ldconfig -r $(TARGET_DIR)" \
		DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
