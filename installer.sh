#!/bin/bash

set -e

MINECRAFT_DIR="server_minecraft"
JAVA_DIR="minecraft"

# Crea e entra nella directory del server
mkdir -p "$MINECRAFT_DIR"
cd "$MINECRAFT_DIR"

# Aggiorna il sistema
sudo apt-get update && sudo apt-get upgrade -y

# Installa Java JRE e JDK (versioni default)
sudo apt-get install -y default-jre default-jdk

# Crea directory minecraft e scarica JDK 17
mkdir -p "$JAVA_DIR"
cd "$JAVA_DIR"

# Scarica e installa OpenJDK 17
wget -q https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.13%2B11/OpenJDK17U-jdk_x64_linux_hotspot_17.0.13_11.tar.gz
tar -xzf OpenJDK17U-jdk_x64_linux_hotspot_17.0.13_11.tar.gz
rm OpenJDK17U-jdk_x64_linux_hotspot_17.0.13_11.tar.gz

# Copia lo script di avvio
cp ../start.sh .

# Scarica PaperMC
wget -q https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/131/downloads/paper-1.21.1-131.jar

# Accetta automaticamente l'EULA
echo "eula=true" > eula.txt

echo "Installazione completata!"
echo "Per avviare il server: cd $MINECRAFT_DIR/$JAVA_DIR && ./start.sh"
echo "Per configurare il server modifica: server.properties"
