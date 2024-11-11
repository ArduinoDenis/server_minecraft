#!/bin/sh
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"
java -Xmx2048M -Xms2048M -jar paper-1.21.1-131.jar -o true
