#!/bin/bash

mkdir -p <NameOfDir> 

sleep 3

loggedInUser=$(stat -f%Su /dev/console)

loginCount=$(last -t console | grep "^${loggedInUser}" | awk 'END {print NR}')

if [ $loginCount > 1 ]; then
    echo "Not first login. Exiting..."
    rm Generic_Dock.sh
else
    echo "First login. Continuing..."
    logname=$NAME

    #flag specific location of file
    FLAG= <FileLocation> 

      if [ ! -f $FLAG ];
        then

    touch -c $FLAG
      else

        echo "Please allow your Dock to reset"

        sleep 5
            dockutil --remove all
        sleep 5
            /usr/local/bin/dockutil --add /Applications/Google\ Chrome.app
            /usr/local/bin/dockutil --add /Applications/Firefox.app
            /usr/local/bin/dockutil --add /Applications/Microsoft\ Word.app
            /usr/local/bin/dockutil --add /Applications/Managed\ Software\ Center.app
        #Add extra apps
          Killall Dock

        Sleep 5

        echo "Download any needed applications through Managed Software Center."

        #Del complete shell script from Mac
        rm Generic_Dock.sh
      fi

fi

rm 1

exit 0
