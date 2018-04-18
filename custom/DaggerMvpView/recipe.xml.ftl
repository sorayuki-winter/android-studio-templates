<?xml version="1.0"?>
<recipe>

    <instantiate from="root/src/app_package/MvpFragment.java.ftl"
                   to="${escapeXmlAttribute(scenesOut)}//${fragmentClass}.java" />

    <instantiate from="root/res/layout/fragment_mvp.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentLayout)}.xml" />
                   
    <instantiate from="root/src/app_package/MvpContract.java.ftl"
                   to="${escapeXmlAttribute(scenesOut)}/${viewClass}Contract.java" />

    <instantiate from="root/src/app_package/MvpPresenter.java.ftl"
                   to="${escapeXmlAttribute(scenesOut)}/${viewClass}Presenter.java" />
                   
    <open file="${escapeXmlAttribute(scenesOut)}/${viewClass}Contract.java" />

</recipe>
