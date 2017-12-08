#!/bin/bash
k=1
read -p "Enter your values between 2 - 20 and press [Enter]:"
if [[ "$REPLY" =~ ^[0-9]+$ ]] && [ "$REPLY" -ge 2 -a "$REPLY" -le 20 ]; then
    n=$REPLY
	for((i=1; i<= n-1; i++)); do
	  for((j=1;j<= n-i; j++)); do
		echo -n " "
	  done
	  echo -n "*"
	  if (( 1 < $i && $i <= n-1)); then
		for((k=1; k<= (2*i - 3); k++)); do
		  echo -n " "
		done
		echo -n "*"  
	  fi 
	  echo ''
	done
	for ((l=0; l<= (2*n - 2); l++)); do
		  echo -n "*"
	done
	echo ''
	for ((i=1; i<= n; i++)); do
	  for ((j=1; j<= n-1; j++)); do
		echo -n " "
	  done
	  echo "*"
	done
	printf "done"
else
  echo "$REPLY is not a valid number"
  exit 1;
fi		
