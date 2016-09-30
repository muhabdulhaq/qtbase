TARGET = QtFontDatabaseSupport
MODULE = fontdatabase_support

QT = core-private gui-private
CONFIG += static internal_module

DEFINES += QT_NO_CAST_FROM_ASCII
PRECOMPILED_HEADER = ../../corelib/global/qt_pch.h

darwin:!if(watchos:CONFIG(simulator, simulator|device)) {
    include($$PWD/mac/coretext.pri)
} else {
    qtConfig(freetype) {
        include($$PWD/basic/basic.pri)
    }

    unix {
        CONFIG += qpa/genericunixfontdatabase
        include($$PWD/genericunix/genericunix.pri)
        qtConfig(fontconfig) {
            include($$PWD/fontconfig/fontconfig.pri)
        }
    }
}

load(qt_module)