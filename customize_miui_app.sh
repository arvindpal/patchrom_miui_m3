#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
pl=$PORT_ROOT/miuipolska/Polish/main
GIT_APPLY=$PORT_ROOT/tools/git.apply
curdir=`pwd`

function adjustDpi() {
    xhdpi=( $(ls out/$1/res/drawable-xhdpi) )

    for PNG in "${xhdpi[@]}"; do
        rm -f out/$1/res/drawable-hdpi/$PNG
        rm -f out/$1/res/drawable-xxhdpi/$PNG
    done
#    rm out/$1/res/mipmap-mdpi
#    rm out/$1/res/mipmap-hdpi
#    rm out/$1/res/mipmap-xxhdpi
}

function addPolish() {
    for file in `find $pl -name $1.apk`
    do
	cp -u -r $file/* out/$1
	find out/$1/res -name "drawable-pl-hdpi" | xargs rm -rf
	find out/$1/res -name "drawable-pl-xxhdpi" | xargs rm -rf
    done
}

if [ $1 = "AntiSpam" ];then
	sed -i -e 's/<action android:name=\"android.intent.action.MAIN\" \/>/<action android:name=\"android.intent.action.MAIN\" \/>\
                <category android:name=\"android.intent.category.LAUNCHER\" \/>/' out/$1/AndroidManifest.xml
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Backup" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Browser" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "BugReport" ];then
	
	adjustDpi $1
	sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Calculator" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Calendar" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "CalendarProvider" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "CloudService" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Contacts" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ContactsProvider" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DeskClock" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DownloadProvider" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DownloadProviderUi" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Email" ];then
	
	adjustDpi $1
	sed -i -e 's/main_content\"\"/main_contentq\"/' $2/res/values/ids.xml
	sed -i -e 's/main_content\"\"/main_contentq\"/' $2/res/values/public.xml
	sed -i -e 's/main_content\"/main_contentq/' $2/res/values-sw600dp/styles.xml
	sed -i -e 's/main_content\"/main_contentq/' $2/res/values-sw720dp-port/styles.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Exchange2" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "FileExplorer" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiCompass" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiGallery" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiHome" ];then
	
	sed -i -e 's/<item>4x5<\/item>/<item>4x5<\/item>\
        <item>5x5<\/item>/' out/$1/res/values/arrays.xml
	sed -i -e 's/<item>Strona<\/item>/<!--item>Strona<\/item-->/' out/$1/res/values-pl/arrays.xml
	sed -i -e 's/<item>Obrót<\/item>/<!--item>Obrót<\/item-->/' out/$1/res/values-pl/arrays.xml
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiSystemUI" ];then
    cp $1/*.part out/
    cd out
    $GIT_APPLY MiuiSystemUI.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: MiuiSystemUI patch fail"
        exit 1
    done

	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/values-xhdpi $2/res/values-xhdpi
fi

if [ $1 = "MiuiVideoPlayer" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiWallpaper" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Mms" ];then
    cp $1/*.part out/
    cd out
    $GIT_APPLY Mms.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: Mms patch fail"
        exit 1
    done

	
	adjustDpi $1
	sed -i -e 's/android:screenOrientation=\"portrait\" //' out/$1/AndroidManifest.xml
	sed -i -e 's/ android:screenOrientation=\"portrait\"//' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Music" ];then
	
	sed -i -e 's/\"no_effect\">Wyłączone/\"no_effect\">ViPER FX/' out/$1/res/values-pl/strings.xml
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "NetworkAssistant" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Notes" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "PackageInstaller" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "PaymentService" ];then
	
	adjustDpi $1
	sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Provision" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "QuickSearchBox" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
    cp $1/*.part out/
    cd out
    $GIT_APPLY Settings.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: Settings patch fail"
        exit 1
    done

	
	sed -i -e 's/<item>Nie usypiaj<\/item>/<!--item>Nie usypiaj<\/item-->/' out/$1/res/values-pl/arrays.xml
	sed -i -e 's/>Szybkie zdjęcie/>Wstecz to skrót aparatu/' out/$1/res/values-pl/strings.xml
	sed -i -e 's/>Wyłącz okno Zasilania/>Wyłącz okno zasilania/' out/$1/res/values-pl/strings.xml
	adjustDpi $1
	cp -f $1/res/drawable-en-xhdpi/miui_logo.png  out/$1/res/drawable-pl-xhdpi/miui_logo.png
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "SoundRecorder" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "TelephonyProvider" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Transfer" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

#if [ $1 = "Updater" ];then
#	
#	adjustDpi $1
#	cp -f $1/res/drawable-en-xhdpi/miui_title.png  out/$1/res/drawable-pl-xhdpi/miui_title.png
#	$XMLMERGYTOOL $1/res/values $2/res/values
#fi
#
if [ $1 = "VpnDialogs" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Weather" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "WeatherProvider" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "XiaomiServiceFramework" ];then
	
	adjustDpi $1
	sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "YellowPage" ];then
	
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi
