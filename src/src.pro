QT       += core gui sql webkitwidgets

QT += xlsx # https://github.com/dbzhang800/QtXlsxWriter

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += link_pkgconfig
PKGCONFIG += json-c # https://linuxprograms.wordpress.com/2010/05/20/json-c-libjson-tutorial/

TEMPLATE = app

DESTDIR = ../bin
TARGET = qt-web-app
unix:MOC_DIR = ../build/moc
unix:OBJECTS_DIR = ../build/

#QMAKE_CXXFLAGS += -std=c++0x -pthread
QMAKE_CFLAGS += -DMONGOOSE_ENABLE_THREADS
#LIBS += -pthread


SOURCES += main.cpp mainwindow.cpp third_libs/mongoose.c \
    web_server.cpp \
    database.cpp \
    ntdeck.cpp

HEADERS  += mainwindow.h third_libs/mongoose.h \
    web_server.h \
    database.h \
    ntdeck.h

FORMS    += mainwindow.ui

OTHER_FILES += README.md

RESOURCES += \
    static_resources.qrc
