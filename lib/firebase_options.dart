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
    apiKey: 'AIzaSyCa0AzLmw2dlQrYt-4kxiXXiFF-lsY3rjg',
    appId: '1:791530848307:web:54a78d84926e14ea0d6346',
    messagingSenderId: '791530848307',
    projectId: 'task-551fd',
    authDomain: 'task-551fd.firebaseapp.com',
    storageBucket: 'task-551fd.appspot.com',
    measurementId: 'G-5J56W46E5T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyADx4ADdQBjMnFuhKbe9jbIwhslngp35v4',
    appId: '1:791530848307:android:bf3efc548051293a0d6346',
    messagingSenderId: '791530848307',
    projectId: 'task-551fd',
    storageBucket: 'task-551fd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6-SHIKmcmJPpcMyh-vrotLKtett4Bp1w',
    appId: '1:791530848307:ios:b2d6f520f978f5410d6346',
    messagingSenderId: '791530848307',
    projectId: 'task-551fd',
    storageBucket: 'task-551fd.appspot.com',
    iosBundleId: 'com.ahmad.task',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD6-SHIKmcmJPpcMyh-vrotLKtett4Bp1w',
    appId: '1:791530848307:ios:276d00fa14353bcb0d6346',
    messagingSenderId: '791530848307',
    projectId: 'task-551fd',
    storageBucket: 'task-551fd.appspot.com',
    iosBundleId: 'com.ahmad.task.RunnerTests',
  );
}
