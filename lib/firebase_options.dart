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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCZ8iNd7Bc_gYjqtvZx1t3sN3f2GIitUN0',
    appId: '1:392144853592:web:30fd7acc9c293d8720082d',
    messagingSenderId: '392144853592',
    projectId: 'esier-96fe9',
    authDomain: 'esier-96fe9.firebaseapp.com',
    storageBucket: 'esier-96fe9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCe25TSCe8hody6WP1hOzSBU0ykuLxWpGI',
    appId: '1:392144853592:android:48e5923534ae95d820082d',
    messagingSenderId: '392144853592',
    projectId: 'esier-96fe9',
    storageBucket: 'esier-96fe9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkTZ06LeBvZS-U-0mv02faDtMH-SQEHac',
    appId: '1:392144853592:ios:eae510e4dfd8bb5520082d',
    messagingSenderId: '392144853592',
    projectId: 'esier-96fe9',
    storageBucket: 'esier-96fe9.appspot.com',
    iosBundleId: 'com.ajieblrsapplication.app.testProject',
  );
}