TEMPLATE = aux

CONFIG  += myfeatures

system($$PWD/bin/gsettings-schema-convert -f -g -x -d "org.graceful.settings" -i "org.graceful.settings" --output org.graceful.settings.gschema.xml $$PWD/data/graceful-settings.xml)


OTHER_FILES = \
    $$PWD/data/graceful-settings.xml                    \
    $$PWD/org.graceful.settings.gschema.xml             \


GSETTINGS_SCHEMA.path = /usr/share/glib-2.0/schemas/
GSETTINGS_SCHEMA.files = $$PWD/org.graceful.settings.gschema.xml

GSETTINGS_COMPILE.path = /usr/share/glib-2.0/schemas/
unix:GSETTINGS_COMPILE.extra = glib-compile-schemas /usr/share/glib-2.0/schemas

INSTALLS = GSETTINGS_SCHEMA GSETTINGS_COMPILE


