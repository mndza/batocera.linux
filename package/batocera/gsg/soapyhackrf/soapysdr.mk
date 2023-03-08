################################################################################
#
# soapyhackrf
#
################################################################################

SOAPYHACKRF_VERSION = 6c0c33f0aa44c3080674e6bca0273184d3e9eb44
SOAPYHACKRF_SITE = $(call github,pothosware,SoapyHackRF,$(SOAPYHACKRF_VERSION))
SOAPYHACKRF_INSTALL_STAGING = YES
SOAPYHACKRF_INSTALL_TARGET = YES
SOAPYHACKRF_DEPENDENCIES = soapysdr hackrf

$(eval $(cmake-package))
