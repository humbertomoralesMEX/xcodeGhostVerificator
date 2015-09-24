#!/bin/bash 
#version: 1.0
#Written by humberto morales
#Info taken from http://researchcenter.paloaltonetworks.com by Claud Xiao

DIRECTORY1="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/Library/Frameworks/CoreServices.framework/CoreService"
FILE1="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/Library/PrivateFrameworks/IDEBundleInjection.framework"
DIRECTORY2="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/Library/Frameworks/CoreServices.framework/CoreService"
FILE2="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/Library/PrivateFrameworks/IDEBundleInjection.framework"
DIRECTORY3="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/Library/Frameworks/CoreServices.framework/CoreService"
FILE3="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/Library/PrivateFrameworks/IDEBundleInjection.framework"
LDPFILE="/Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/SharedSupport/Developer/Library/Xcode/Plug-ins/CoreBuildTasks.xcplugin/Contents/Resources/Ld.xcspec"

echo "Verifying files..."

if [ -e "$FILE1" ] || [ -e "$FILE2" ] || [ -e "$FILE3" ];then	
	echo "Your Xcode is infected, you must install the official version from https://developer.apple.com"
	exit
fi

if [ -d "$DIRECTORY1" ] || [ -d "$DIRECTORY2" ] || [ -d "$DIRECTORY3" ]; then
	echo "Your Xcode is infected, you must install the official version from https://developer.apple.com"
	exit
fi

if grep -q "force_load" $LDPFILE ; then
	echo "Your Xcode is infected, you must install the official version from https://developer.apple.com"
	exit
fi

echo "Don't worry your Xcode is OK"