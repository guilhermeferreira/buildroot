################################################################################
#
# paho-mqtt-cpp
#
################################################################################

PAHO_MQTT_CPP_VERSION = e01d948892e10cf0dbc20aa38faadb6e211e8403
#PAHO_MQTT_CPP_SITE = git://github.com/guilhermeferreira/paho.mqtt.cpp.git
PAHO_MQTT_CPP_SITE = /home/gmacielferreira/Sources/MQTT/paho.mqtt.cpp
PAHO_MQTT_CPP_SITE_METHOD = git
PAHO_MQTT_CPP_LICENSE = EPLv1.0 or EDLv1.0
PAHO_MQTT_CPP_LICENSE_FILES = edl-v10 epl-v10
PAHO_MQTT_CPP_INSTALL_STAGING = YES
PAHO_MQTT_CPP_INSTALL_TARGET = YES
PAHO_MQTT_CPP_AUTORECONF = YES
PAHO_MQTT_CPP_AUTORECONF_OPTS = --force --install

PAHO_MQTT_CPP_CONF_OPTS = --disable-static
PAHO_MQTT_CPP_CONF_OPTS += --disable-samples
PAHO_MQTT_CPP_CONF_OPTS += --disable-doc
PAHO_MQTT_CPP_CONF_OPTS += --disable-peak-warnings

PAHO_MQTT_C_DEPENDENCIES = paho-mqtt-c

$(eval $(autotools-package))
