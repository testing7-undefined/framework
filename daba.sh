#! /bin/bash/

clear

#testing7=0

#function for installing location tools
function create_lcn_tls(){
#bash lcntls.sh
	cd ~/Downloads/majorproject11/
	mkdir loction_tools
	cd loction_tools
	git clone https://github.com/thewhiteh4t/seeker.git
	cd seeker/
	chmod +x install.sh
	#./install.sh

}

#function for installing website cloning tools
function create_wcln_tls(){
#bash wclntls.sh

	cd ~/Downloads/majorproject11/
	mkdir website_cloning
	cd website_cloning
	git clone --depth=1 https://github.com/htr-tech/zphisher.git
	cd zphisher
	chmod 766 zphisher.sh
        #bash zphisher.sh

}

#function for installing camera phishing tools

function create_cmr_tls(){
bash cmrtls.sh
	
	cd ~/Downloads/majorproject11/
	mkdir camera
	cd camera
	#sudo apt update
	sudo apt-get install php
	git clone https://github.com/techchipnet/CamPhish
	cd CamPhish
	#chmod +x camphish.sh
	#bash camphish.sh

}

#function for creating base folders for ok.sh script file

function installee(){

	cd ~/Downloads/
	#pwd
	mkdir majorproject11
	cd majorproject11

	create_lcn_tls
	create_wcln_tls
	create_cmr_tls
	
	cd ~/Downloads/majorproject11/
	touch avail.txt
	
	echo "0" > avail.txt
	
	read -p "
successfully installed the framework

Do you want to start the framework (Y/n) : " opin
        if [[ $opin == 'Y' || $opin == 'y' ]]; then	
	 openn
	else 
	 exit
	fi

}

##function for running the ok.sh which is used to load installed tools
function openn(){

	bash ~/Desktop/abcdef.sh

}



function printt(){

	read -p "
seems like you may not have been installed this framework
  
Do you want to install it (Y/n) : " opinion

echo "

"
	  
	#echo $opinion
	  if [[ $opinion == 'Y' || $opinion == 'y' ]] ; then
	    installee
	  else
	    exit
	  fi

}


#echo "welcome to this framework"

#function is to check for pre-existing framework folders and tools
function check(){

	cd ~/Downloads/

	if [ ! -d "majorproject11" ] ; then 
	    printt
	else
	  #echo "success"
	  #cd ~/Downloads/majorproject11/
	  val=`cat ~/Downloads/majorproject11/avail.txt`
	  echo $val
	  if [[ $val != 0 ]] ; then
	    printt
	  else
	    openn
	  fi
	fi 
	
}

#sparking the ignition / heap of the script.

check 

#who we were : CMRCET Students
