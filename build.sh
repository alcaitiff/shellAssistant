#!/bin/bash
ver=$(grep Version src/DEBIAN/control | sed "s/.*: \(.*\)/\1/g")
dpkg-deb --build src && mv src.deb build/shellAssistant-${ver}.deb
