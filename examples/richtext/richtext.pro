TEMPLATE    = subdirs
SUBDIRS     = calendar \
              orderform \
              syntaxhighlighter \
              textedit

# install
target.path = $$[QT_INSTALL_EXAMPLES]/qtbase/richtext
sources.files = $$SOURCES $$HEADERS $$RESOURCES $$FORMS richtext.pro README
sources.path = $$[QT_INSTALL_EXAMPLES]/qtbase/richtext
INSTALLS += target sources

symbian: CONFIG += qt_example
QT += widgets
maemo5: CONFIG += qt_example
