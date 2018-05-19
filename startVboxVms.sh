#!/bin/bash

#Get the list of vms to start:

vboxmanage list vms |grep CI| cut -d { -f1 |tr -d \'\" > cdciVms

#Start all vms

while read p ;do vboxmanage startvm $p --type headless; done <cdciVms
