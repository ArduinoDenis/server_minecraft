#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Usa il JDK 17 scaricato se disponibile, altrimenti usa quello di sistema
JAVA_HOME_LOCAL="$(find . -name "jdk-17*" -type d 2>/dev/null | head -1)"

if [ -n "$JAVA_HOME_LOCAL" ] && [ -d "$JAVA_HOME_LOCAL/bin" ]; then
    JAVA_CMD="$JAVA_HOME_LOCAL/bin/java"
else
    JAVA_CMD="java"
fi

echo "Avvio del server Minecraft con $JAVA_CMD"
exec "$JAVA_CMD" -Xmx2048M -Xms1024M -jar paper-1.21.1-131.jar nogui
