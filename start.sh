#!/bin/sh
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"
java -Xmx2048M -Xms2048M -jar Spigot-1.19.2.jar -o true
