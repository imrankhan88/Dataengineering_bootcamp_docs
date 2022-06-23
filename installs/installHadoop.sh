#!/bin/bash
cd ~/installs
echo "Downloading latest hadoop"
wget https://downloads.apache.org/hadoop/common/hadoop-3.3.3/hadoop-3.3.3.tar.gz .

echo "Successfully Downloaded hadoop, Extracting the tar"
tar -xvf hadoop-3.3.3.tar.gz
unlink hadoop
ln -s hadoop-3.3.3 hadoop
chmod -R 777 hadoop
unlink ~/hadoop
ln -s ~/installs/hadoop ~/hadoop
echo "Getting update"
sudo apt-get update
echo "installing the java"
sudo apt-get install openjdk-8-jdk
java -version
unlink ~/installs/jsdk
ln -s /usr/lib/jvm/java-8-openjdk-amd64 ~/installs/jsdk
unlink ~/jsdk
ln -s /usr/lib/jvm/java-8-openjdk-amd64 ~/jsdk
cd ../
. .bashrc
rm ~/installs/hadoop/etc/hadoop/core-site.xml
cp ~/installs/hadoopconf/core-site.xml ~/installs/hadoop/etc/hadoop
rm ~/installs/hadoop/etc/hadoop/hdfs-site.xml
cp ~/installs/hadoopconf/hdfs-site.xml ~/installs/hadoop/etc/hadoop

rm ~/installs/hadoop/etc/hadoop/yarn-site.xml
cp ~/installs/hadoopconf/yarn-site.xml ~/installs/hadoop/etc/hadoop
rm ~/installs/hadoop/etc/hadoop/mapred-env.sh
cp ~/installs/hadoopconf/mapred-env.sh.xml ~/installs/hadoop/etc/hadoop
rm ~/installs/hadoop/etc/hadoop/hadoop-env.sh
cp ~/installs/hadoopconf/hadoop-env.sh ~/installs/hadoop/etc/hadoop
mkdir ~/installs/hadoop/yarndata
mkdir ~/installs/hadoop/nndata
mkdir ~/installs/hadoop/dndata
mkdir ~/installs/hadoop/logs
echo "Formating the namenode"
hadoop namenode -format
echo "Starting namenode"
start-dfs.sh
echo "Starting yarn"
start-yarn.sh
jps
echo "Open below link for yarn"
echo "http://localhost:8088"
echo "Open below link for hdfs"
echo "http://localhost:9870/"
chmod +x ~/installs/restartHadoop.sh
chmod +x ~/installs/startHadoop.sh
chmod +x ~/installs/stopHadoop.sh
ln -s ~/installs/restartHadoop.sh ~/restartHadoop.sh
ln -s ~/installs/restartHadoop.sh ~/startHadoop.sh
ln -s ~/installs/restartHadoop.sh ~/stopHadoop.sh

