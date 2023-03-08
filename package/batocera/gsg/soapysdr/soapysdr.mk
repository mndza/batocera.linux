################################################################################
#
# soapysdr
#
################################################################################

SOAPYSDR_VERSION = 9c4fa3241b220341479a1a76057025a8264e50d9
SOAPYSDR_SITE = $(call github,pothosware,SoapySDR,$(SOAPYSDR_VERSION))
SOAPYSDR_INSTALL_STAGING = YES
SOAPYSDR_INSTALL_TARGET = YES
SOAPYSDR_DEPENDENCIES = 

$(eval $(cmake-package))
