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
    apiKey: 'AIzaSyCwmtr81J0lRd6PECEDBymWkyEY0E69rGA',
    appId: '1:269168007771:web:b652fec9a551203b32bd7e',
    messagingSenderId: '269168007771',
    projectId: 'fir-flutter-fd4ec',
    authDomain: 'fir-flutter-fd4ec.firebaseapp.com',
    storageBucket: 'fir-flutter-fd4ec.firebasestorage.app',
    measurementId: 'G-8VMY04G0Z0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNIISTbbfixDa7OxxrtI8DsA2ChZATQjA',
    appId: '1:269168007771:android:353fa3b7fd24fc6132bd7e',
    messagingSenderId: '269168007771',
    projectId: 'fir-flutter-fd4ec',
    storageBucket: 'fir-flutter-fd4ec.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzPP-do7KnAB04WAKFNC4jv9MkZTDy6xA',
    appId: '1:269168007771:ios:e41aefb00ae5f01732bd7e',
    messagingSenderId: '269168007771',
    projectId: 'fir-flutter-fd4ec',
    storageBucket: 'fir-flutter-fd4ec.firebasestorage.app',
    iosBundleId: 'com.example.classWorks',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAzPP-do7KnAB04WAKFNC4jv9MkZTDy6xA',
    appId: '1:269168007771:ios:e41aefb00ae5f01732bd7e',
    messagingSenderId: '269168007771',
    projectId: 'fir-flutter-fd4ec',
    storageBucket: 'fir-flutter-fd4ec.firebasestorage.app',
    iosBundleId: 'com.example.classWorks',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCwmtr81J0lRd6PECEDBymWkyEY0E69rGA',
    appId: '1:269168007771:web:abcdf0c52353077432bd7e',
    messagingSenderId: '269168007771',
    projectId: 'fir-flutter-fd4ec',
    authDomain: 'fir-flutter-fd4ec.firebaseapp.com',
    storageBucket: 'fir-flutter-fd4ec.firebasestorage.app',
    measurementId: 'G-7XQ19EWK87',
  );
}