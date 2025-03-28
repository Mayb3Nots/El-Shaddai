// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA4mTi8nMk0zkW99YxQHGFoJt6rW7FRc6U',
    appId: '1:5347198504:web:fc2706a03f0044bd29571d',
    messagingSenderId: '5347198504',
    projectId: 'el-shadd',
    authDomain: 'el-shadd.firebaseapp.com',
    storageBucket: 'el-shadd.firebasestorage.app',
    measurementId: 'G-ZVL2Q5PREE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvlnyePX5BHvyHP4laYXnS2I0ia9U4jdw',
    appId: '1:5347198504:android:8a9e148585b0e00929571d',
    messagingSenderId: '5347198504',
    projectId: 'el-shadd',
    storageBucket: 'el-shadd.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAtN7volYsQjnFNWiEICqMPaxJ_w45N7Jc',
    appId: '1:5347198504:ios:7ceba25fb22fb03429571d',
    messagingSenderId: '5347198504',
    projectId: 'el-shadd',
    storageBucket: 'el-shadd.firebasestorage.app',
    androidClientId: '5347198504-8nsftf8dlrmfhuhu68aqh4boj0olruuv.apps.googleusercontent.com',
    iosClientId: '5347198504-1g2jgrr8h2or0n7494mgenqi15305fd9.apps.googleusercontent.com',
    iosBundleId: 'com.example.elShaddai',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAtN7volYsQjnFNWiEICqMPaxJ_w45N7Jc',
    appId: '1:5347198504:ios:7ceba25fb22fb03429571d',
    messagingSenderId: '5347198504',
    projectId: 'el-shadd',
    storageBucket: 'el-shadd.firebasestorage.app',
    androidClientId: '5347198504-8nsftf8dlrmfhuhu68aqh4boj0olruuv.apps.googleusercontent.com',
    iosClientId: '5347198504-1g2jgrr8h2or0n7494mgenqi15305fd9.apps.googleusercontent.com',
    iosBundleId: 'com.example.elShaddai',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA4mTi8nMk0zkW99YxQHGFoJt6rW7FRc6U',
    appId: '1:5347198504:web:fc2706a03f0044bd29571d',
    messagingSenderId: '5347198504',
    projectId: 'el-shadd',
    authDomain: 'el-shadd.firebaseapp.com',
    storageBucket: 'el-shadd.firebasestorage.app',
    measurementId: 'G-ZVL2Q5PREE',
  );

}