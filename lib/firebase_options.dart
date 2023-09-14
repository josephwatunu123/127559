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
    apiKey: 'AIzaSyA4WvapoUyV4VaGYOFRe_7mh57uSeVyi4o',
    appId: '1:384714417974:web:932cb74bb377c814cfb597',
    messagingSenderId: '384714417974',
    projectId: 'saving-app-63ff9',
    authDomain: 'saving-app-63ff9.firebaseapp.com',
    storageBucket: 'saving-app-63ff9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwext2GJ292VAkzzQAKszN0adip0loFyk',
    appId: '1:384714417974:android:62d5f175ea517a9ccfb597',
    messagingSenderId: '384714417974',
    projectId: 'saving-app-63ff9',
    storageBucket: 'saving-app-63ff9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpYY8afUNg-7aApPU3UoKsUP6oFhlZ54M',
    appId: '1:384714417974:ios:842dc6e453ff7c46cfb597',
    messagingSenderId: '384714417974',
    projectId: 'saving-app-63ff9',
    storageBucket: 'saving-app-63ff9.appspot.com',
    iosBundleId: 'com.example.saveApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpYY8afUNg-7aApPU3UoKsUP6oFhlZ54M',
    appId: '1:384714417974:ios:58d63ddf987096d7cfb597',
    messagingSenderId: '384714417974',
    projectId: 'saving-app-63ff9',
    storageBucket: 'saving-app-63ff9.appspot.com',
    iosBundleId: 'com.example.saveApp.RunnerTests',
  );
}
