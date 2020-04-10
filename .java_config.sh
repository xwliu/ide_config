#!/bin/bash

if [[ $1 = '6' ]]; 
then
	echo "java version 6"
	export JAVA_HOME=/home/smdt/Java-1.6/jdk1.6.0_43
	export JRE_HOME=${JAVA_HOME}/jre
	export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
	export PATH=${JAVA_HOME}/bin:$PATH
elif [[ $1 = '7' ]];then
	echo "java version 7"
	export JAVA_HOME=/home/smdt/java-7/usr/lib/jvm/java-7-openjdk-amd64
	export JRE_HOME=${JAVA_HOME}/jre
	export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
	export PATH=${JAVA_HOME}/bin:$PATH
elif [[ $1 = '8' ]];then
	echo "java version 8"
	export JAVA_HOME=/home/smdt/JVM1.8/java-8-openjdk-amd64
	export JRE_HOME=${JAVA_HOME}/jre
	export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
	export PATH=${JAVA_HOME}/bin:$PATH
else
	echo "java version is default"
fi
