ESP-IDF template app with unit tests
====================================

Demonstration project for issue https://stackoverflow.com/questions/46341680/cant-get-to-exec-one-makefile-in-another-one (not yet resolved)

This code is an extended idf-template project for ESP32 development. List of modifications:

* Added a demo component to the build (calculator).
* Added unit tests for the calculator component.
* Added unit tests for the main component.
* ESP-IDF is added as a submodule, the project does not require the environment variable IDF_PATH to be set.

WARNING: this project is a buggy work in progress, do not use as base of own projects.

TODO: move main unit tests from main-test to main/test directory. 
Currently cannot do this because of .c autodetection in main that compiles unit tests to the application. 



Usage
-----

1. Setup toolchain: https://dl.espressif.com/doc/esp-idf/latest/get-started/index.html#setup-toolchain
2. Git clone this repository with recursive option (or `git submodule init; git submodule update` afterwords)
3. Create project defaults with `make defconfig`
4. Execute project with `make ESPPORT=port` where port is a windows name like `COM20` or linux name like `/dev/tty19`
5. Create unit test defaults with `make defconfig`
6. Execute unit tests with `$(make tests-hack ESPPORT=port)` with the same port as above. The tests-hack target is, as the name suggests, a temporary hack.
