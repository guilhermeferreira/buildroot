################################################################################
#
# paho-mqtt-cpp
#
################################################################################

PAHO_MQTT_CPP_VERSION = 636b41f076c504735192558ead15fbf7a46adf78
#PAHO_MQTT_CPP_SITE = git://github.com/guilhermeferreira/paho.mqtt.cpp.git
PAHO_MQTT_CPP_SITE = /home/gmacielferreira/Sources/MQTT/paho.mqtt.cpp
PAHO_MQTT_CPP_SITE_METHOD = git
PAHO_MQTT_CPP_LICENSE = EPLv1.0 or EDLv1.0
PAHO_MQTT_CPP_LICENSE_FILES = edl-v10 epl-v10
PAHO_MQTT_CPP_INSTALL_STAGING = YES
PAHO_MQTT_CPP_INSTALL_TARGET = YES

PAHO_MQTT_CPP_CONF_OPTS = -DPAHO_BUILD_STATIC=FALSE
PAHO_MQTT_CPP_CONF_OPTS += -DPAHO_BUILD_SAMPLES=FALSE

PAHO_MQTT_C_DEPENDENCIES = paho-mqtt-c

$(eval $(cmake-package))
