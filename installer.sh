#!/bin/bash

# Imposta i permessi per la directory del server Minecraft
sudo chmod 777 server_minecraft/

# Entra nella directory del server Minecraft
cd server_minecraft/

# Imposta i permessi per tutti i file nella directory del server Minecraft
sudo chmod 777 *

# Installazione di Java Runtime Environment
sudo apt-get install default-jre -y
java -version

# Installazione di Java Development Kit
sudo apt-get install default-jdk -y
javac -version

# Creazione della directory "minecraft" e scaricamento di JDK 17
mkdir minecraft
cd minecraft/
sudo chmod 777 ..
sudo wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.13%2B11/OpenJDK17U-jdk_x64_linux_hotspot_17.0.13_11.tar.gz
sudo tar -xvf OpenJDK17U-jdk_x64_linux_hotspot_17.0.13_11.tar.gz
sudo rm -rf OpenJDK17U-jdk_x64_linux_hotspot_17.0.13_11.tar.gz
sudo cp ../start.sh .
sudo chmod 777 *
sudo wget https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/131/downloads/paper-1.21.1-131.jar
sudo chmod 777 *
cd ..

# Aggiornamento del sistema
sudo apt-get update && sudo apt-get upgrade -y

# Aggiunta del repository Java
sudo add-apt-repository ppa:linuxuprising/java -y

# Installazione di Oracle Java 17
sudo apt-get install oracle-java17-installer oracle-java17-set-default -y

# Entra nella directory del server Minecraft
cd minecraft/

# Esegui il file start.sh per avviare il server Minecraft
./start.sh

# Imposta il file "eula.txt" su true
echo "___Impostazione di eula.txt su true___"
nano eula.txt

# Configura le impostazioni del server Minecraft
echo "___Configurazione delle impostazioni del server Minecraft___"
nano server.properties

# Imposta i permessi per tutti i file nella directory del server Minecraft
sudo chmod 777 *

# Avvia il server Minecraft
bash start.sh
