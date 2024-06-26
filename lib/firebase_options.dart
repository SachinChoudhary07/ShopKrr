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
    apiKey: 'AIzaSyCnNhQ_9QULwoFQN7VOUotGqHmYtZsfftg',
    appId: '1:795756012122:web:0e42c953bd3c154642ae63',
    messagingSenderId: '795756012122',
    projectId: 'shopkr-f7cce',
    authDomain: 'shopkr-f7cce.firebaseapp.com',
    storageBucket: 'shopkr-f7cce.appspot.com',
    measurementId: 'G-F0XLM5RNGN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAPVr8DB-CHBucxJKbe9Xb-MwaqfUph_CY',
    appId: '1:795756012122:android:5c70fa170e912dab42ae63',
    messagingSenderId: '795756012122',
    projectId: 'shopkr-f7cce',
    storageBucket: 'shopkr-f7cce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFNkU90_-nBa032bvI7PQYpCQtBKAxKWk',
    appId: '1:795756012122:ios:475d3c8c64d6e2f242ae63',
    messagingSenderId: '795756012122',
    projectId: 'shopkr-f7cce',
    storageBucket: 'shopkr-f7cce.appspot.com',
    iosBundleId: 'com.example.shopkrr',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFNkU90_-nBa032bvI7PQYpCQtBKAxKWk',
    appId: '1:795756012122:ios:475d3c8c64d6e2f242ae63',
    messagingSenderId: '795756012122',
    projectId: 'shopkr-f7cce',
    storageBucket: 'shopkr-f7cce.appspot.com',
    iosBundleId: 'com.example.shopkrr',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCnNhQ_9QULwoFQN7VOUotGqHmYtZsfftg',
    appId: '1:795756012122:web:64d47925301d058b42ae63',
    messagingSenderId: '795756012122',
    projectId: 'shopkr-f7cce',
    authDomain: 'shopkr-f7cce.firebaseapp.com',
    storageBucket: 'shopkr-f7cce.appspot.com',
    measurementId: 'G-Z5FQNS8SN6',
  );
}
