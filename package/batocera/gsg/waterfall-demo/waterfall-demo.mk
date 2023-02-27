################################################################################
#
# waterfall-demo
#
################################################################################

WATERFALL_DEMO_COMMIT = da2079c
WATERFALL_DEMO_VERSION = git+$(WATERFALL_DEMO_COMMIT)
WATERFALL_DEMO_SITE = $(call github,mndza,waterfall-demo,$(WATERFALL_DEMO_COMMIT))
WATERFALL_DEMO_LICENSE = BSD-3
WATERFALL_DEMO_LICENSE_FILES = LICENSE

WATERFALL_DEMO_CARGO_BUILD_OPTS=

define WATERFALL_DEMO_POST_PROCESS
	$(INSTALL) -m 0644 -D $(WATERFALL_DEMO_PKGDIR)/es_systems_apps.cfg $(TARGET_DIR)/usr/share/emulationstation/es_systems_apps.cfg
	mkdir -p $(TARGET_DIR)/usr/share/batocera/datainit/roms/apps/
	$(INSTALL) -m 0755 -D $(WATERFALL_DEMO_PKGDIR)/scripts/*.sh $(TARGET_DIR)/usr/share/batocera/datainit/roms/apps/
	$(INSTALL) -m 0644 -D $(WATERFALL_DEMO_PKGDIR)/button_map.json $(TARGET_DIR)/usr/share/batocera/datainit/roms/apps/
endef

WATERFALL_DEMO_POST_INSTALL_TARGET_HOOKS += WATERFALL_DEMO_POST_PROCESS

$(eval $(cargo-package))
