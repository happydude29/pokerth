# QMake pro-file for PokerTH db library

TEMPLATE = lib
CODECFORSRC = UTF-8

CONFIG += staticlib thread exceptions rtti stl warn_on
UI_DIR = uics
TARGET = lib/pokerth_db
MOC_DIR = mocs
OBJECTS_DIR = obj
DEFINES += ENABLE_IPV6
QT -= core gui
#PRECOMPILED_HEADER = src/pch_lib.h

INCLUDEPATH += . \
		src

DEPENDPATH += . \
		src

# Input
HEADERS += \
		src/db/serverdbcallback.h \
		src/db/serverdbfactory.h \
		src/db/serverdbinterface.h \
		src/db/serverdbgeneric.h \
		src/db/serverdbfactorygeneric.h \
		src/db/serverdbnoaction.h

SOURCES += \
		src/db/common/serverdbcallback.cpp \
		src/db/common/serverdbfactory.cpp \
		src/db/common/serverdbinterface.cpp \
		src/db/common/serverdbgeneric.cpp \
		src/db/common/serverdbfactorygeneric.cpp \
		src/db/common/serverdbnoaction.cpp

win32{
	DEFINES += CURL_STATICLIB
	DEFINES += _WIN32_WINNT=0x0501
	DEPENDPATH += src/net/win32/ src/core/win32
	INCLUDEPATH += ../boost/ ../GnuTLS/include ../curl/include ../zlib
}
!win32{
	##### My release static build options
	#QMAKE_CXXFLAGS += -ffunction-sections -fdata-sections
}

mac{
	# make it universal  
	CONFIG += x86
	CONFIG -= ppc
	QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.5

	# for universal-compilation on PPC-Mac uncomment the following line
	# on Intel-Mac you have to comment this line out or build will fail.
	#	QMAKE_MAC_SDK=/Developer/SDKs/MacOSX10.4u.sdk/

	INCLUDEPATH += /Developer/SDKs/MacOSX10.5.sdk/usr/include/
	INCLUDEPATH += /Library/Frameworks/SDL.framework/Headers
	INCLUDEPATH += /Library/Frameworks/SDL_mixer.framework/Headers
}
