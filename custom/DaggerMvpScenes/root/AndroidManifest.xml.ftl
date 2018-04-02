<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="${packageName}">

    <application>
        <activity android:name="${scenesPackage}.${activityClass}"<#if isLauncher && (!(isLibraryProject!false) || isInstantApp)>>
                <intent-filter>
                    <action android:name="android.intent.action.MAIN" />
                    <category android:name="android.intent.category.LAUNCHER" />
                </intent-filter>
        </activity>
        <#else>/>
       </#if>
    </application>
</manifest>
