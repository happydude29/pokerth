# -------------------------------------------------
# Project created by QtCreator 2009-07-17T21:51:00
# -------------------------------------------------
CODECFORSRC = UTF-8
QT += network
QT -= gui
TARGET = chatcleaner
CONFIG += console \
	debug
CONFIG -= app_bundle
MOC_DIR = mocs
OBJECTS_DIR = obj
TEMPLATE = app
INCLUDEPATH += src/ \
	src/third_party/tinyxml \
	src/chatcleaner/ \
	src/third_party/asn1/ \
	src/net/
DEPENDPATH += src/ \
	src/third_party/tinyxml \
	src/chatcleaner/ \
	src/third_party/asn1/ \
	src/net/
SOURCES += chatcleaner.cpp \
	cleanerserver.cpp \
	messagefilter.cpp \
	badwordcheck.cpp \
	textfloodcheck.cpp \
	cleanerconfig.cpp \
	tinystr.cpp \
	tinyxml.cpp \
	tinyxmlerror.cpp \
	tinyxmlparser.cpp \
	capsfloodcheck.cpp \
	letterrepeatingcheck.cpp \
	urlcheck.cpp
HEADERS += cleanerserver.h \
	messagefilter.h \
	badwordcheck.h \
	textfloodcheck.h \
	cleanerconfig.h \
	tinyxml.h \
	tinystr.h \
	capsfloodcheck.h \
	letterrepeatingcheck.h \
	urlcheck.h
LIBPATH += lib
LIBS += -lpokerth_lib \
	-lpokerth_protocol
win32 { 
	LIBPATH += ../boost/stage/lib
	INCLUDEPATH += ../boost/
	debug:LIBPATH += Debug/lib
	release:LIBPATH += Release/lib
}
mac { 
	# make it universal
	CONFIG += x86
	CONFIG -= ppc
	QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.5
	LIBPATH += /Developer/SDKs/MacOSX10.5.sdk/usr/lib
	INCLUDEPATH += /Developer/SDKs/MacOSX10.5.sdk/usr/include/
}
