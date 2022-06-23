#!/bin/bash

export HOME_DIR=/home/$USER
#export JAVA_HOME =$HOME_DIR/installs/jsdk
export HADOOP_HOME=$HOME_DIR/installs/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
#export  HIVE_HOME=$HOME_DIR/software/hive
#export SPARK_HOME=/home/zidane/.local/lib/python3.8/site-packages/pyspark
#export KAFKA_HOME=$HOME_DIR/kafka
#export ZOOKEEPER_HOME=$HOME_DIR/zookeeper
#export HBASE_HOME=$HOME_DIR/hbase
#export PYTHONPATH =$SPARK_HOME/python:$SPARK_HOME/python/lib/pyspark.zip:$PYTHONPATH
#export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib:$PYTHONPATH
#export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$ZOOKEEPER_HOME/bin:$HBASE_HOME/bin:$HADOOP_HOME/sbin:$HADOOP_CONF_DIR/:$HIVE_HOME/bin:$SPAR>

export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$HADOOP_CONF_DIR/



