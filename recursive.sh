#!/bin/bash

function recursive_works () { 
	echo "Recursive works!"
	sleep 0.5
	recursive_works
}

recursive_works
