#!/bin/bash

sudo dscl . -create /Users/#Account 
sudo dscl . -create /Users/#Account UserShell /bin/bash
sudo dscl . -create /Users/#Account RealName "" #Account
sudo dscl . -create /Users/#Account UniqueID ""
sudo dscl . -create /Users/#Account PrimaryGroupID 80
sudo dscl . -create /Users/#Account NFSHomeDirectory /Users/#Account
sudo dscl . -passwd /Users/#Account #Password
sudo dscl . -append /Groups/() GroupMembership Generic

exit 0
