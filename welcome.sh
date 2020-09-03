#!/bin/bash
#Script made by Arslaan Malik Version 1.0 beta

echo "Welcome to Assignmnet 1"
#touch test
echo 'machine name="machine_name"' > test
echo 'container="container_name"' >> test
echo 'image="image_name"' >>test
echo 'app name="app_name"' >>test
echo 'ports="ports"' >> test

read -p "Choose Your Options Press 1 to see running containers Press 2 to See Docker Images Press 0 to exit" option

if [ $option == 1 ]
then
   docker ps
elif [ $option == 2 ]
then
   docker images
elif [ $option == 3 ]
then
   echo "Running Container with default prefernces"
   source default_configurations.txt
    echo "machine name = $machine_name"
    echo "container = $container_name"
    echo "image = $image_name"
    echo "app name = $app_name"
    echo "ports = $ports"
    echo ""
elif [ $option == 4 ]
then
    read -p "What is the name of your docker-machine [default]? " machine_name
    sed -i "s/TestMachine/$machine_name/" user_configurations.txt

else
    echo "exiting"
fi