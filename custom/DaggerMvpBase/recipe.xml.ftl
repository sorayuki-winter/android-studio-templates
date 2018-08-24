<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    
    <!--
    ./

    BasePresenter.java
    BaseView.java
    -->
    <instantiate from="root/src/app_package/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BasePresenter.java" />
    <instantiate from="root/src/app_package/BaseView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BaseView.java" />
    
    <!--
    ./di

    ActivityBindingModule.java
    ActivityScoped.java
    AppComponent.java
    ApplicationModule.java
    Component.java
    FragmentScoped.java
    MyDaggerApplication.java
    -->
    <mkdir at="${escapeXmlAttribute(diOut)}"/>
    <instantiate from="root/src/app_package/di/ActivityBindingModule.java.ftl"
                   to="${escapeXmlAttribute(diOut)}/ActivityBindingModule.java" />
    <instantiate from="root/src/app_package/di/ActivityScoped.java.ftl"
                   to="${escapeXmlAttribute(diOut)}/ActivityScoped.java" />
    <instantiate from="root/src/app_package/di/AppComponent.java.ftl"
                   to="${escapeXmlAttribute(diOut)}/AppComponent.java" />
    <instantiate from="root/src/app_package/di/ApplicationModule.java.ftl"
                   to="${escapeXmlAttribute(diOut)}/ApplicationModule.java" />
    <instantiate from="root/src/app_package/di/Component.java.ftl"
                   to="${escapeXmlAttribute(diOut)}/Component.java" />
    <instantiate from="root/src/app_package/di/FragmentScoped.java.ftl"
                   to="${escapeXmlAttribute(diOut)}/FragmentScoped.java" />
    <instantiate from="root/src/app_package/di/MyDaggerApplication.java.ftl"
                   to="${escapeXmlAttribute(diOut)}/MyDaggerApplication.java" />
    
    <!--
    ./util

    AppExecutors.java
    -->
    <mkdir at="${escapeXmlAttribute(utilOut)}"/>
    <instantiate from="root/src/app_package/util/AppExecutors.java.ftl"
                   to="${escapeXmlAttribute(utilOut)}/AppExecutors.java" />
    
    <!--
    ./data

    Item.java
    -->
    <mkdir at="${escapeXmlAttribute(dataOut)}"/>
    <instantiate from="root/src/app_package/data/Item.java.ftl"
                   to="${escapeXmlAttribute(dataOut)}/Item.java" />
    
    <!--
    ./data/source

    DataSource.java
    Local.java
    Remote.java
    Repository.java
    RepositoryModule.java
    -->
    <mkdir at="${escapeXmlAttribute(dataOut)}/source"/>
    <mkdir at="${escapeXmlAttribute(dataOut)}/source/local"/>
    <instantiate from="root/src/app_package/data/source/local/LocalDataSource.java.ftl"
                   to="${escapeXmlAttribute(dataOut)}/source/local/LocalDataSource.java" />
    <mkdir at="${escapeXmlAttribute(dataOut)}/source/remote"/>
    <instantiate from="root/src/app_package/data/source/remote/RemoteDataSource.java.ftl"
                   to="${escapeXmlAttribute(dataOut)}/source/remote/RemoteDataSource.java" />
    <instantiate from="root/src/app_package/data/source/DataSource.java.ftl"
                   to="${escapeXmlAttribute(dataOut)}/source/DataSource.java" />
    <instantiate from="root/src/app_package/data/source/Local.java.ftl"
                   to="${escapeXmlAttribute(dataOut)}/source/Local.java" />
    <instantiate from="root/src/app_package/data/source/Remote.java.ftl"
                   to="${escapeXmlAttribute(dataOut)}/source/Remote.java" />
    <instantiate from="root/src/app_package/data/source/Repository.java.ftl"
                   to="${escapeXmlAttribute(dataOut)}/source/Repository.java" />
    <instantiate from="root/src/app_package/data/source/RepositoryModule.java.ftl"
                   to="${escapeXmlAttribute(dataOut)}/source/RepositoryModule.java" />
    
    <merge from="root/build.gradle.ftl"
           to="${escapeXmlAttribute(projectOut)}/build.gradle" />
    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

</recipe>
