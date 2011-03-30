include(../common.pri)
TEMPLATE = lib
#VERSION = 

HEADERS += content.h
HEADERS += content_context.h
HEADERS += effects.h
HEADERS += effects_impl.h
HEADERS += image.h
HEADERS += logger.h
HEADERS += parameters.h
HEADERS += qml_content.h
HEADERS += web_content.h
HEADERS += webvfx.h

SOURCES += content.cpp
SOURCES += content_context.cpp
SOURCES += effects.cpp
SOURCES += effects_impl.cpp
SOURCES += image.cpp
SOURCES += logger.cpp
SOURCES += parameters.cpp
SOURCES += qml_content.cpp
SOURCES += web_content.cpp
SOURCES += webvfx.cpp
macx:SOURCES += webvfx_mac.mm

macx:LIBS += -framework Foundation

CONFIG += shared thread warn_on debug_and_release
QT += webkit opengl declarative

CONFIG(debug, debug|release) {
    TARGET = webvfx_debug
} else {
    TARGET = webvfx
}

target.path = $$PREFIX/lib
INSTALLS += target