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
    apiKey: 'AIzaSyAJ-AnIVrwMLqgKAAOxSf29YwbAB7iNdGA',
    appId: '1:440928771461:web:0fdec11d0f0c37a89138ec',
    messagingSenderId: '440928771461',
    projectId: 'fir-01-8f531',
    authDomain: 'fir-01-8f531.firebaseapp.com',
    storageBucket: 'fir-01-8f531.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDV-0qrFdMG1UYGWmauYSro6nFetEarRZI',
    appId: '1:440928771461:android:80a25a0fa3fe5b3d9138ec',
    messagingSenderId: '440928771461',
    projectId: 'fir-01-8f531',
    storageBucket: 'fir-01-8f531.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBt56Mjt35X6bHS6fbGA2L66oQrRFwx1F0',
    appId: '1:440928771461:ios:2a55df54972d7d879138ec',
    messagingSenderId: '440928771461',
    projectId: 'fir-01-8f531',
    storageBucket: 'fir-01-8f531.appspot.com',
    iosBundleId: 'com.example.pushNotifications',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBt56Mjt35X6bHS6fbGA2L66oQrRFwx1F0',
    appId: '1:440928771461:ios:2a55df54972d7d879138ec',
    messagingSenderId: '440928771461',
    projectId: 'fir-01-8f531',
    storageBucket: 'fir-01-8f531.appspot.com',
    iosBundleId: 'com.example.pushNotifications',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAJ-AnIVrwMLqgKAAOxSf29YwbAB7iNdGA',
    appId: '1:440928771461:web:6d084f6eb01665f59138ec',
    messagingSenderId: '440928771461',
    projectId: 'fir-01-8f531',
    authDomain: 'fir-01-8f531.firebaseapp.com',
    storageBucket: 'fir-01-8f531.appspot.com',
  );
}
