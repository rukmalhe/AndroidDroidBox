#########################################################################################
## Copyright Rukmal Hewawasam
## SLIIT - MSC
## Droidbox-y
#########################################################################################

#########################################################################################

#!/bin/csh

#checking property file is providing!!!!
if ($#argv != 1) then
echo "${HOST}:" 'Please supply the location of the properties file'
exit
endif

set CONFIG_FILE=/tmp/droidbox_install_config.properties
set TMP_PROPERTIES_FILE=/tmp/temp_droidbox_install_prop.properties

rm -f $TMP_PROPERTIES_FILE $CONFIG_FILE
cp $1 $CONFIG_FILE

# copy properties file & strip out comments & and any unassigned properties
cat ${CONFIG_FILE} | grep -v '^#' | grep -v '=$'| grep '=' >> ${TMP_PROPERTIES_FILE}

# Set up variables from properties file
set droidbox.working.directory=`egrep droidbox.working.directory.path $TMP_PROPERTIES_FILE | cut -d= -f2`
set java.home=`egrep java.home.path $TMP_PROPERTIES_FILE | cut -d= -f2`
set lightdm=`egrep java.home.path $TMP_PROPERTIES_FILE | cut -d= -f2`

# Set Android Build TOP
setenv ANDROID_BUILD_TOP $droidbox.working.directory

#Linux prebuilts gcc packages
#Android Development packages:
#Android build artifacts
#set PATH
setenv PATH=$java.home/bin:$lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:$droidbox.working.directory/out/host/linux-x86/bin:$droidbox.working.directory/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6/bin:$droidbox.working.directory/prebuilts/gcc/linux-x86/x86/i686-android-linux-4.4.3/bin:$droidbox.working.directory/development/emulator/qtools:$droidbox.working.directory/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6/bin:$droidbox.working.directory/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin:$droidbox.working.directory/development/scripts

#########################################################################################
## Clean up
#########################################################################################
rm -f $tmpLogFile
rm -f $TMP_PROPERTIES_FILE
rm -f $CONFIG_FILE
#########################################################################################