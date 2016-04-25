################################################################################
#
# paho-mqtt-c
#
################################################################################

PAHO_MQTT_C_VERSION = ff86fb9582786d7bc58892a557db22af12f223ff
#PAHO_MQTT_C_SITE = git://github.com/guilhermeferreira/paho.mqtt.c.git
PAHO_MQTT_C_SITE = /home/gmacielferreira/Sources/MQTT/paho.mqtt.c
PAHO_MQTT_C_SITE_METHOD = git
PAHO_MQTT_C_LICENSE = EPLv1.0 or EDLv1.0
PAHO_MQTT_C_LICENSE_FILES = edl-v10 epl-v10
PAHO_MQTT_C_INSTALL_STAGING = YES
PAHO_MQTT_C_INSTALL_TARGET = YES

PAHO_MQTT_C_CONF_OPTS = -DPAHO_BUILD_STATIC=FALSE
PAHO_MQTT_C_CONF_OPTS += -DPAHO_BUILD_SAMPLES=FALSE
PAHO_MQTT_C_CONF_OPTS += -DPAHO_BUILD_TEST=FALSE
PAHO_MQTT_C_CONF_OPTS += -DPAHO_BUILD_DOCUMENTATION=FALSE

ifeq ($(BR2_PACKAGE_PAHO_MQTT_C_SYNCHRONOUS),y)
PAHO_MQTT_C_CONF_OPTS += -DPAHO_BUILD_SYNC=TRUE
else
PAHO_MQTT_C_CONF_OPTS += -DPAHO_BUILD_SYNC=FALSE
endif

ifeq ($(BR2_PACKAGE_PAHO_MQTT_C_ASYNCHRONOUS),y)
PAHO_MQTT_C_CONF_OPTS += -DPAHO_BUILD_ASYNC=TRUE
else
PAHO_MQTT_C_CONF_OPTS += -DPAHO_BUILD_ASYNC=FALSE
endif

ifeq ($(BR2_PACKAGE_PAHO_MQTT_C_OPENSSL),y)
PAHO_MQTT_C_DEPENDENCIES += openssl
PAHO_MQTT_C_CONF_OPTS += -DPAHO_WITH_SSL=TRUE
endif

$(eval $(cmake-package))
