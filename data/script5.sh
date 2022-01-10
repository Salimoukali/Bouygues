#!/bin/bash

FTPPORT=2222
   FTPUSER="f5g"
   FTPSERVER="crbvnxt"
   ErrorFile="/var/log/ErrorFile.log"
   isPurge=$1
   localDir=$2
   getsrcdir=`dirname $3`
   getsrcfile=`basename $3`

   echo $getsrcdir
   echo $getsrcfile
  # echo `basename $0`
  # echo `dirname $0`
