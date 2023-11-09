#! /bin/bash/

clear

echo "Welcome to this Framework "

#used to clearing the screen before and after the framework tools launch 

function starting(){

        echo "starting the tool "
        
	for(( i=0;i<10;i++)) do
	echo -n "====="
	sleep 0.1s
	done

	sleep 1s
	
	clear
}

#this funtion displays the avaliable location-phishing tools in the framework.

function location(){
	
	cd ~/Downloads/majorproject11/loction_tools/seeker/

	starting

	python3 seeker.py
	
	clear
}

#this funtion displays the avaliable camera-phishing tools in the framework.

function camera(){

	cd ~/Downloads/majorproject11/camera/CamPhish
	
	starting
	
	bash camphish.sh
	
	clear

}

#this funtion displays the avaliable website-cloning tools in the framework.

function website(){

	cd ~/Downloads/majorproject11/website_cloning/zphisher
	
	starting
	
	
	bash zphisher.sh
	
	clear
}

#redirect is for redirecting the respective categories tools 

function redirect(){

	case $1 in
	1)
	location 
	;;
	2)
	website
	;;
	3)
	camera
	;;
	*)
	echo "Invalid"
	;;
	esac

}

#selectt is used to read the input from user. 

function selectt(){

	read -p "Enter: " a
	if [[ $a -lt 1 || $a -gt 4 ]]; then
	 clear
	 sleep 0.5s
	 echo "Please! enter the valid option "
	elif [[ $a -eq 4 ]] ; then
	 echo "Exiting from frame work "
	 sleep 1.3s
	 op=1
	else 
	 clear
	 sleep 1s
	 redirect $a
	 op=1
	 
	fi
}

#options is used to display the different types of options that avaliable.

function options(){

	echo "
	1.Location Tools 
	2.website cloning Tools
	3.camera phishing tools
	4.Exit
	"
}

#op ==> variable for detecting and running until the exiting the framework.

op=0
until [[ $op -eq 1 ]];do

	options
	selectt
done


#Who we are : CMRCET Students.
