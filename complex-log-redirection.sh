#!/bin/sh

# start and log app output

appPath=/home/station/analytic/stationDetectionSoftware/bin/Release
appName=stationDetect
scriptPath=`pwd`

cd $appPath
# start app, redirect stdr to logErr and stdout to log
{ { ./$appName 2>&1 1>&3 | $scriptPath/logErr.sh; } 2>&1 3>&1; } | $scriptPath/log.sh;

