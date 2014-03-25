#
# Makefile for gnote
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_i9300.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/i9300_4.1

# All apps from original ZIP, but has smali files chanded
local-modified-apps := OriginalSettings Camera

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := MediaProvider Stk

local-miui-modified-apps := AntiSpam Backup Browser BugReport Calculator Calendar CalendarProvider CloudService Contacts \
			ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email Exchange2 FileExplorer MiuiCompass \
			MiuiGallery MiuiHome MiuiSystemUI MiWallpaper Mms Music NetworkAssistant Notes PackageInstaller Phone \
			PaymentService Provision QuickSearchBox Settings SoundRecorder TelephonyProvider ThemeManager Transfer Updater VpnDialogs \
			Weather WeatherProvider XiaomiServiceFramework YellowPage

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml
	cp other/system_fonts.xml $(ZIP_DIR)/system/etc/system_fonts.xml
	cp other/FFFFFFFF000000000000000000000001.drbin $(ZIP_DIR)/system/app
	cp -r other/mcRegistry $(ZIP_DIR)/system/app


