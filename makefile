#***Android***
DEVELOPER = xb17
PROJECT = de3
APK = $(PROJECT)-debug.apk
APackage = org.$(DEVELOPER).$(PROJECT)

all: build pack uninstall install-debug

build:
	@echo -e "\e[92m"'_(ANDROID)_______________________BUILDING:'"\e[0m"
	ndk-build
# ./gradlew installDebug

pack:
	@echo -e "\e[92m"'_(ANDROID)________________________PACKING:'"\e[0m"
	ant debug

uninstall:
	@echo -e "\e[92m"'_(ANDROID)________________________UNINSTALLING:'"\e[0m"
	adb uninstall $(APackage)

install-debug:
	@echo -e "\e[92m"'_(ANDROID)________________________INSTALLING:'"\e[0m"
	adb install bin/$(APK)

