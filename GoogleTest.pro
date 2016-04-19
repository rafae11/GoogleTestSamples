QT += core
QT -= gui

CONFIG += c++11

TARGET = GoogleTest
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += \
    main1.cpp \
    main3.cpp \
    main.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../gmock/lib/release/ -lgmock
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../gmock/lib/debug/ -lgmock

INCLUDEPATH += $$PWD/../../../../gmock/include
DEPENDPATH += $$PWD/../../../../gmock/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../gtest/lib/release/ -lgtest
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../gtest/lib/debug/ -lgtestd

INCLUDEPATH += $$PWD/../../../../gtest/include
DEPENDPATH += $$PWD/../../../../gtest/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../gmock/lib/release/ -lgmock_main
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../gmock/lib/debug/ -lgmock_main

HEADERS += \
    turtle.h \
    mockturtle.h \
    painter.h
