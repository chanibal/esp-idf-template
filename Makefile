#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := app-template-with-unit-tests

include $(IDF_PATH)/make/project.mk


.PHONY: tests-hack
tests-hack:
	echo "please copy, paste and execute:" 1>&2
	echo \
	$(MAKE) -C "$(IDF_PATH)/tools/unit-test-app" EXTRA_COMPONENT_DIRS="$(CURDIR)/components" TEST_COMPONENTS="calculator" ESPPORT="$(ESPPORT)" -j app-flash monitor
	
.PHONY: tests
tests:
	$(MAKE) -C "$(IDF_PATH)/tools/unit-test-app" EXTRA_COMPONENT_DIRS="$(CURDIR)/components" TEST_COMPONENTS="calculator" ESPPORT="$(ESPPORT)" -j app-flash monitor
