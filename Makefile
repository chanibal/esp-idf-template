PROJECT_NAME := app-template-with-unit-tests

# The ESP-IDF environment is a local submodule
IDF_PATH := $(CURDIR)/esp-idf

include $(IDF_PATH)/make/project.mk

MY_TEST_COMPONENTS := main-test  calculator

.PHONY: tests-hack
tests-hack:
	echo "please copy, paste and execute:" 1>&2
	echo                                                                        \
	$(MAKE) -C \"$(IDF_PATH)/tools/unit-test-app\"                              \
		EXTRA_COMPONENT_DIRS=\"$(CURDIR)/components $(PROJECT_PATH)/main-test\" \
		TEST_COMPONENTS=\"$(MY_TEST_COMPONENTS)\"                               \
		ESPPORT=\"$(ESPPORT)\"                                                  \
		IDF_PATH=\"$(IDF_PATH)\"                                                \
		-j app-flash monitor                                                    ;
                                                                                
.PHONY: tests                                                                   
tests:                                                                          
	$(MAKE) -C "$(IDF_PATH)/tools/unit-test-app"                                \
		EXTRA_COMPONENT_DIRS="$(CURDIR)/components $(PROJECT_PATH)/main-test"   \
		TEST_COMPONENTS="$(MY_TEST_COMPONENTS)"                                 \
		ESPPORT="$(ESPPORT)"                                                    \
		IDF_PATH="$(IDF_PATH)"                                                  \
		-j app-flash monitor                                                    ;

# TODO: tests-clean target