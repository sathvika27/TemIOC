TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = temIOC
# temIOC.dbd will be created and installed
DBD += temIOC.dbd

# temIOC.dbd will be made up from these files:
temIOC_DBD += base.dbd

# Include dbd files from all support applications:
#temIOC_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#temIOC_LIBS += xxx

# temIOC_registerRecordDeviceDriver.cpp derives from temIOC.dbd
temIOC_SRCS += temIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
temIOC_SRCS_DEFAULT += temIOCMain.cpp
temIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#temIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
temIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

