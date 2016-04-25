################################################################################
#
# paho-mqtt-c
#
################################################################################

PAHO_MQTT_C_VERSION = 6d3b2045f8d4b1691ac206485cd1ee881be93adb
#PAHO_MQTT_C_SITE = git://github.com/guilhermeferreira/paho.mqtt.c.git
PAHO_MQTT_C_SITE = /home/gmacielferreira/Sources/MQTT/paho.mqtt.c
PAHO_MQTT_C_SITE_METHOD = git
PAHO_MQTT_C_LICENSE = EPLv1.0 or EDLv1.0
PAHO_MQTT_C_LICENSE_FILES = edl-v10 epl-v10
PAHO_MQTT_C_INSTALL_STAGING = YES
PAHO_MQTT_C_INSTALL_TARGET = YES
PAHO_MQTT_C_AUTORECONF = YES
PAHO_MQTT_C_AUTORECONF_OPTS = --force --install

PAHO_MQTT_C_CONF_OPTS = --disable-static
PAHO_MQTT_C_CONF_OPTS += --disable-samples
PAHO_MQTT_C_CONF_OPTS += --disable-test
PAHO_MQTT_C_CONF_OPTS += --disable-doc
PAHO_MQTT_C_CONF_OPTS += --disable-debug
PAHO_MQTT_C_CONF_OPTS += --disable-peak-warnings

ifeq ($(BR2_PACKAGE_PAHO_MQTT_C_SYNCHRONOUS),y)
PAHO_MQTT_C_CONF_OPTS += --enable-sync
else
PAHO_MQTT_C_CONF_OPTS += --disable-sync
endif

ifeq ($(BR2_PACKAGE_PAHO_MQTT_C_ASYNCHRONOUS),y)
PAHO_MQTT_C_CONF_OPTS += --enable-async
else
PAHO_MQTT_C_CONF_OPTS += --disable-async
endif

ifeq ($(BR2_PACKAGE_PAHO_MQTT_C_OPENSSL),y)
PAHO_MQTT_C_DEPENDENCIES += openssl
PAHO_MQTT_C_CONF_OPTS += --with-ssl
endif

$(eval $(autotools-package))
