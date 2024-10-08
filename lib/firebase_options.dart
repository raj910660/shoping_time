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
    apiKey: 'AIzaSyBR0lqfgQnrMOYyJ-bgimAlAUy1mpm5fms',
    appId: '1:652955042348:web:c32bf0cbb7f4cc7ac20789',
    messagingSenderId: '652955042348',
    projectId: 'shoping-time-561d2',
    authDomain: 'shoping-time-561d2.firebaseapp.com',
    storageBucket: 'shoping-time-561d2.appspot.com',
    measurementId: 'G-FGXZ4SD9PB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBpXxtlBO8JKRIZHyH1kPO4FZ2xzpvB44o',
    appId: '1:652955042348:android:d839b3c3bdb5e869c20789',
    messagingSenderId: '652955042348',
    projectId: 'shoping-time-561d2',
    storageBucket: 'shoping-time-561d2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA00s1xKuVbr60CFhB9IpwhwGn7-xgXs2U',
    appId: '1:652955042348:ios:17b03aa0abca21e5c20789',
    messagingSenderId: '652955042348',
    projectId: 'shoping-time-561d2',
    storageBucket: 'shoping-time-561d2.appspot.com',
    iosBundleId: 'com.example.shopingTime',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA00s1xKuVbr60CFhB9IpwhwGn7-xgXs2U',
    appId: '1:652955042348:ios:17b03aa0abca21e5c20789',
    messagingSenderId: '652955042348',
    projectId: 'shoping-time-561d2',
    storageBucket: 'shoping-time-561d2.appspot.com',
    iosBundleId: 'com.example.shopingTime',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBR0lqfgQnrMOYyJ-bgimAlAUy1mpm5fms',
    appId: '1:652955042348:web:ba7e84d175dff657c20789',
    messagingSenderId: '652955042348',
    projectId: 'shoping-time-561d2',
    authDomain: 'shoping-time-561d2.firebaseapp.com',
    storageBucket: 'shoping-time-561d2.appspot.com',
    measurementId: 'G-TVPSQ0QEZL',
  );
}
