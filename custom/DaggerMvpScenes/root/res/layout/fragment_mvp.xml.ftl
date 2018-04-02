<?xml version="1.0" encoding="utf-8"?>
<LinearLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    tools:context="${scenesPackage}.${fragmentClass}">

    <android.support.design.widget.AppBarLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content">

        <android.support.v7.widget.Toolbar
            android:id="@+id/${scenesLower}_toolbar"
            android:layout_width="match_parent"
            android:layout_height="?attr/actionBarSize" />

    </android.support.design.widget.AppBarLayout>

    <TextView
        android:text="Dagger Mvp Scenes"
        android:gravity="center"
        android:layout_width="match_parent"
        android:layout_height="match_parent" />

</LinearLayout>
