#/bin/sh
# build script for flatpak.

cmake -B build
cd build
make
install -Dm755 -t /app/bin build/duckduckgobrowser
install -Dm755 -t /app/share/applications data/com.github.vikdevelop.duckduckgobrowser.desktop
install -Dm644 -t /app/share/metainfo data/com.github.vikdevelop.duckduckgobrowser.metainfo.xml
install -Dm755 -t /app/share/icons/hicolor/128x128/apps data/icons/hicolor/128x128/apps/com.github.vikdevelop.duckduckgobrowser.png
