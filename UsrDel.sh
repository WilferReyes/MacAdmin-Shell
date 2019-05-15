#!/bin/bash

sudo dscl . delete <UsrPath>
  sleep 3

sudo rm -rf <UsrPath>

exit 0;
