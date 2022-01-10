#!/bin/sh

INTtrap()
{
  echo " appelle la fonction INTtrap()"
}

T=20
#trap INTtrap 2
trap 'INTtrap' 2

while [ $T -ne 14 ]; do
  echo $T
  sleep 1
  let T=T-1
done
trap 'echo " commande echo T="$T' 2
while [ $T -ne 7 ]; do
  echo $T
  sleep 1
  let T=T-1
done
trap - 2
while [ $T -ne 0 ]; do
  echo $T
  sleep 1
  let T=T-1
done
echo "- Bye ! -"
