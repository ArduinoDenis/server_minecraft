sudo apt-get install default-jre -y ;
java -version ;
sudo apt-get install default-jdk -y ;
javac -version;
mkdir minecraft;
sudo chmod 777 minecraft/;
wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.2%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.2_8.tar.gz;
tar -xvf OpenJDK17U-jdk_x64_linux_hotspot_17.0.2_8.tar.gz;
sudo rm -rf OpenJDK17U-jdk_x64_linux_hotspot_17.0.2_8.tar.gz;
sudo cp start.sh minecraft/
cd minecraft/
sudo chmod 777 *;
wget https://papermc.io/api/v2/projects/paper/versions/1.18.2/builds/267/downloads/paper-1.18.2-267.jar
mv paper-1.18.2-267.jar server.jar
chmod 777 *
sudo apt-get update && sudo apt-get upgrade -y;
sudo add-apt-repository ppa:linuxuprising/java -y;
sudo apt-get install oracle-java17-installer oracle-java17-set-default -y
cd minecraft/
./start.sh;
echo ____settare eula.txt in true______
nano eula.txt;
echo ____settare le impostazioni del server minecraft______
nano server.properties;
sudo chmod 777 *;
bash start.sh;
