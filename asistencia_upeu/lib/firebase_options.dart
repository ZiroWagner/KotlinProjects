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
    apiKey: 'AIzaSyDYptS_KI07mA2aIJZbxyZ5Z-m9xSVUtM4',
    appId: '1:521288364521:web:e3468ae072b89ea68a9b78',
    messagingSenderId: '521288364521',
    projectId: 'asistenciaupeu-379d9',
    authDomain: 'asistenciaupeu-379d9.firebaseapp.com',
    storageBucket: 'asistenciaupeu-379d9.firebasestorage.app',
    measurementId: 'G-9KB0CBMKF9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjAhJXtRhZ487_qeQ5XdoqtvKTW1IEIKo',
    appId: '1:521288364521:android:bcfaf9ddd7056a668a9b78',
    messagingSenderId: '521288364521',
    projectId: 'asistenciaupeu-379d9',
    storageBucket: 'asistenciaupeu-379d9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAgULZC687jXdR0X162qN8YJlkTSI_H_yA',
    appId: '1:521288364521:ios:fd997bcb66635d538a9b78',
    messagingSenderId: '521288364521',
    projectId: 'asistenciaupeu-379d9',
    storageBucket: 'asistenciaupeu-379d9.firebasestorage.app',
    iosBundleId: 'pe.edu.upeu.asistenciaUpeu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAgULZC687jXdR0X162qN8YJlkTSI_H_yA',
    appId: '1:521288364521:ios:fd997bcb66635d538a9b78',
    messagingSenderId: '521288364521',
    projectId: 'asistenciaupeu-379d9',
    storageBucket: 'asistenciaupeu-379d9.firebasestorage.app',
    iosBundleId: 'pe.edu.upeu.asistenciaUpeu',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDYptS_KI07mA2aIJZbxyZ5Z-m9xSVUtM4',
    appId: '1:521288364521:web:50b83f99568184cd8a9b78',
    messagingSenderId: '521288364521',
    projectId: 'asistenciaupeu-379d9',
    authDomain: 'asistenciaupeu-379d9.firebaseapp.com',
    storageBucket: 'asistenciaupeu-379d9.firebasestorage.app',
    measurementId: 'G-4YT4DN58Z9',
  );
}
