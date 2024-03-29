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
    apiKey: 'AIzaSyCnl9Aa5Od-GLwiqg0mIIYGMuQhNCUfYgk',
    appId: '1:961750529501:web:dd349a553cd66e7a02f234',
    messagingSenderId: '961750529501',
    projectId: 'test-9fe53',
    authDomain: 'test-9fe53.firebaseapp.com',
    storageBucket: 'test-9fe53.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKWjlldB0i36kQKH7fcpYITzkheOQFVh8',
    appId: '1:961750529501:android:43fa7b0d480a6a7502f234',
    messagingSenderId: '961750529501',
    projectId: 'test-9fe53',
    storageBucket: 'test-9fe53.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqdO0XmAX7hmTF80k1ZEe9lhIrfSGeZ6I',
    appId: '1:961750529501:ios:23f960125c2ab2c902f234',
    messagingSenderId: '961750529501',
    projectId: 'test-9fe53',
    storageBucket: 'test-9fe53.appspot.com',
    iosClientId: '961750529501-frn4inhr5ddr4vf2m30brfu05tgfmu3r.apps.googleusercontent.com',
    iosBundleId: 'com.advilbuddies.yycscan',
  );
}
