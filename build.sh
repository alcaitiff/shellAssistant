#!/bin/bash
ver=$(grep Version src/DEBIAN/control | sed "s/.*: \(.*\)/\1/g")
mkdir -p build
dpkg-deb --build src && mv src.deb build/shellAssistant-${ver}.deb
