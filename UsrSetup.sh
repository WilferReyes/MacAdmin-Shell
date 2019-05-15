#!/bin/bash

sudo dscl . -create /Users/<AccountName>
sudo dscl . -create /Users/<AccountName> UserShell /bin/bash
sudo dscl . -create /Users/<AccountName> RealName " <Name> " <AccountName>
sudo dscl . -create /Users/<AccountName> UniqueID " <Number> "
sudo dscl . -create /Users/<AccountName> PrimaryGroupID 80
sudo dscl . -create /Users/<AccountName> NFSHomeDirectory /Users/<AccountName>
sudo dscl . -passwd /Users/<AccountName> <Password>
sudo dscl . -append /Groups/<GroupName> GroupMembership <Memebership>

exit 0
