#!/bin/bash 
#version: 1.1
#Written by humberto morales
#Info taken from http://researchcenter.paloaltonetworks.com by Claud Xiao

FOLDER_CORESERVICE_IPHONE="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/Library/Frameworks/CoreServices.framework/CoreService"
FOLDER_CORESERVICE_SIMULATOR="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/Library/Frameworks/CoreServices.framework/CoreService"
FOLDER_CORESERVICE_MAC="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/Library/Frameworks/CoreServices.framework/CoreService"
FOLDER_CORESERVICES_IPHONE="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/Library/Frameworks/CoreServices.framework/CoreServices"
FOLDER_CORESERVICES_SIMULATOR="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/Library/Frameworks/CoreServices.framework/CoreServices"
FOLDER_CORESERVICES_MAC="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/Library/Frameworks/CoreServices.framework/CoreServices"

FILE_FRAMEWORK_IPHONE="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/Library/PrivateFrameworks/IDEBundleInjection.framework"
FILE_FRAMEWORK_SIMULATOR="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/Library/PrivateFrameworks/IDEBundleInjection.framework"
FILE_FRAMEWORK_MAC="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/Library/PrivateFrameworks/IDEBundleInjection.framework"

LDP_FILE="/Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/SharedSupport/Developer/Library/Xcode/Plug-ins/CoreBuildTasks.xcplugin/Contents/Resources/Ld.xcspec"

echo "Verifying files..."

if [ -e $FILE_FRAMEWORK_IPHONE ] || [ -e $FILE_FRAMEWORK_SIMULATOR ] || [ -e $FILE_FRAMEWORK_MAC ];then	
	echo "Your Xcode is infected, you must install the official version from https://developer.apple.com"
	exit
fi

if [ -d $FOLDER_CORESERVICE_IPHONE ] || [ -d $FOLDER_CORESERVICE_SIMULATOR ] || [ -d $FOLDER_CORESERVICE_MAC ] || [ -d $FOLDER_CORESERVICES_IPHONE ] || [ -d $FOLDER_CORESERVICES_SIMULATOR ] || [ -d $FOLDER_CORESERVICES_MAC ]; then
	echo "Your Xcode is infected, you must install the official version from https://developer.apple.com"
	exit
fi

if grep -q "force_load" $LDP_FILE ; then
	echo "Your Xcode is infected, you must install the official version from https://developer.apple.com"
	exit
fi

echo "Don't worry your Xcode is OK"