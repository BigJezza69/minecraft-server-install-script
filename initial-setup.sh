#!/usr/bin/bash
#Jar download
echo "what version of minecraft"
echo "vanilla only, full release versions only"
echo "e.g. 1.17.1, 1.16.4"
read version
wget "https://serverjars.com/api/fetchJar/vanilla/$version"
#file creation
java -jar "$version"
#accpting the eula
sed -i '3s/.*/eula=true/' eula.txt
#finishing the file creation
java -jar "$version" nogui
clear
#editing properties
echo "almost there"
echo "time to edit the properties"
sleep 2s
nano server.properties
echo "now your setup is complete"
#creating the next setup scripts
touch run.sh
touch server.sh
echo "java -jar $version nogui" > run.sh
chmod +x run.sh
chmod +x server.sh
echo "all done!"
sleep 3s
./server.sh


