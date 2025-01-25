android {
    compileSdkVersion 33

    defaultConfig {
        applicationId "com.example.seuprojeto"
        minSdkVersion 21
        targetSdkVersion 33
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
        
        flutter {
            enableImpeller = false // Desabilita o Impeller
        }
    }
}

