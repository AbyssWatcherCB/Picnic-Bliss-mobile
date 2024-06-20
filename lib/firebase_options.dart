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
    apiKey: 'AIzaSyCOjiZqS5zPGfxYrBewMNFWH7l1Ru2pP-I',
    appId: '1:296005822833:web:92af5263b8c2d009b92ed0',
    messagingSenderId: '296005822833',
    projectId: 'quickbite-8c1e4',
    authDomain: 'quickbite-8c1e4.firebaseapp.com',
    storageBucket: 'quickbite-8c1e4.appspot.com',
    measurementId: 'G-XC8WFMF6W5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1V7DcGf2FuSR1RHMvq6ICA1NlZ3KHfvc',
    appId: '1:296005822833:android:c70417e424604d59b92ed0',
    messagingSenderId: '296005822833',
    projectId: 'quickbite-8c1e4',
    storageBucket: 'quickbite-8c1e4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJ-YGHICwbmulbWwJyNFm1zM0OEmQv334',
    appId: '1:296005822833:ios:baba2d46dbe04d4cb92ed0',
    messagingSenderId: '296005822833',
    projectId: 'quickbite-8c1e4',
    storageBucket: 'quickbite-8c1e4.appspot.com',
    iosBundleId: 'com.example.quickBite',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJ-YGHICwbmulbWwJyNFm1zM0OEmQv334',
    appId: '1:296005822833:ios:baba2d46dbe04d4cb92ed0',
    messagingSenderId: '296005822833',
    projectId: 'quickbite-8c1e4',
    storageBucket: 'quickbite-8c1e4.appspot.com',
    iosBundleId: 'com.example.quickBite',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCOjiZqS5zPGfxYrBewMNFWH7l1Ru2pP-I',
    appId: '1:296005822833:web:a5455cb8e5e36768b92ed0',
    messagingSenderId: '296005822833',
    projectId: 'quickbite-8c1e4',
    authDomain: 'quickbite-8c1e4.firebaseapp.com',
    storageBucket: 'quickbite-8c1e4.appspot.com',
    measurementId: 'G-31E97J15MF',
  );
}
