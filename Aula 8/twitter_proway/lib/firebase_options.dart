// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCSqWgMeiKgj9fRlalACJl-UghnZdWJ6oI',
    appId: '1:1018620959842:web:902614ba3b2c868337053b',
    messagingSenderId: '1018620959842',
    projectId: 'twitter-proway',
    authDomain: 'twitter-proway.firebaseapp.com',
    storageBucket: 'twitter-proway.appspot.com',
    measurementId: 'G-HHNJ6PR2P0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCmFMvDi41tIZyQA_kf08zXHjO9NhXECkU',
    appId: '1:1018620959842:android:5bf5a6355506e9f837053b',
    messagingSenderId: '1018620959842',
    projectId: 'twitter-proway',
    storageBucket: 'twitter-proway.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbgD2tR_zoke_zALPEm9SnU6QxKRWuq1g',
    appId: '1:1018620959842:ios:c8fc14be8c389e7137053b',
    messagingSenderId: '1018620959842',
    projectId: 'twitter-proway',
    storageBucket: 'twitter-proway.appspot.com',
    iosBundleId: 'com.example.twitterProway',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbgD2tR_zoke_zALPEm9SnU6QxKRWuq1g',
    appId: '1:1018620959842:ios:824db7be645520bd37053b',
    messagingSenderId: '1018620959842',
    projectId: 'twitter-proway',
    storageBucket: 'twitter-proway.appspot.com',
    iosBundleId: 'com.example.twitterProway.RunnerTests',
  );
}
