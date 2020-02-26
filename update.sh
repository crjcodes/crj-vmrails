#!/usr/bin/bash

# Purpose: Updates vagrant-related software
#
# Use in the development area before deploying
#
# Resolves issues like the OS or VB guest additions being out-of-date

vagrant box update
vagrant plugin update
