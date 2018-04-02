dependencies {
    // Dagger dependencies
    annotationProcessor "com.google.dagger:dagger-compiler:2.11"
    compileOnly 'org.glassfish:javax.annotation:10.0-b28'
    implementation 'com.google.dagger:dagger:2.11'
    implementation 'com.google.dagger:dagger-android:2.11'
    implementation 'com.google.dagger:dagger-android-support:2.11'
    annotationProcessor "com.google.dagger:dagger-android-processor:2.11"
    //Mockito
    testImplementation 'org.mockito:mockito-core:2.7.22'
    androidTestImplementation 'org.mockito:mockito-android:2.7.22'
}

