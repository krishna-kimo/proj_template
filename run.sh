#!/bin/bash

proj_name=udemy

dev_build="${proj_name}:dev"
	
	
case $1 in
	"build")
		docker build -t ${dev_build} .
		;;
	"run")
		docker run --rm -ti --name ${proj_name} -v $(pwd):/home/jovyan/work -p 8888:8888 ${dev_build}
		;;
	*)
		echo "Wrong Command"
		;;
esac
