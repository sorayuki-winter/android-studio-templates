<?xml version="1.0"?>
<recipe>

    <mkdir at="${escapeXmlAttribute(scenesOut)}"/>

    <instantiate from="root/src/app_package/MvpFragment.java.ftl"
                   to="${escapeXmlAttribute(scenesOut)}//${fragmentClass}.java" />

    <instantiate from="root/res/layout/fragment_mvp.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentLayout)}.xml" />

    <instantiate from="root/src/app_package/MvpActivity.java.ftl"
                   to="${escapeXmlAttribute(scenesOut)}/${activityClass}.java" />

    <instantiate from="root/res/layout/activity_mvp.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityLayout)}.xml" />

    <instantiate from="root/src/app_package/MvpContract.java.ftl"
                   to="${escapeXmlAttribute(scenesOut)}/${scenesClass}Contract.java" />

    <instantiate from="root/src/app_package/MvpModule.java.ftl"
                   to="${escapeXmlAttribute(scenesOut)}/${scenesClass}Module.java" />

    <instantiate from="root/src/app_package/MvpPresenter.java.ftl"
                   to="${escapeXmlAttribute(scenesOut)}/${scenesClass}Presenter.java" />
    
    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
           
    <open file="${escapeXmlAttribute(scenesOut)}/${scenesClass}Module.java" />

</recipe>
