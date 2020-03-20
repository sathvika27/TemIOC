#!../../bin/linux-x86_64/temIOC

## You may have to change temIOC to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/temIOC.dbd"
temIOC_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/dbFile.db","T=temp")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=epics"
