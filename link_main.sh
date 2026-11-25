#!/usr/bin/env bash
set -e
TAG="gentle-forest-eager-comet"
LIB="rolling-event.a"
URL="https://github.com/brightaglder/driedneonlab/releases/download/${TAG}/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
