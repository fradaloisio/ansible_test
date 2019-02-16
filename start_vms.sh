#!/bin/bash
H=`pwd`
function start {
	cd $1
	#echo `pwd`
	vagrant up
}
declare -a vms=(
	"vm1"
	"vm2"
	"vm3"	)


for v in "${vms[@]}"
do
	cd $H
	start $v
done
