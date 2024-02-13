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
    apiKey: 'AIzaSyAz2Drdc693U91mFQkoDNMe0Pv2UkZ_Gk0',
    appId: '1:746802212180:web:ea27fdde49b72ddb6bacc1',
    messagingSenderId: '746802212180',
    projectId: 'invitation-2ea60',
    authDomain: 'invitation-2ea60.firebaseapp.com',
    storageBucket: 'invitation-2ea60.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzhqRZ83Xy_IqSrHRytWevReCUBNZFLu4',
    appId: '1:746802212180:android:bc4debcf3cc3009b6bacc1',
    messagingSenderId: '746802212180',
    projectId: 'invitation-2ea60',
    storageBucket: 'invitation-2ea60.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1vdmYsoUQjGp5-JLhF6O6li80OXH2J7A',
    appId: '1:746802212180:ios:d9458d60a21e1a4b6bacc1',
    messagingSenderId: '746802212180',
    projectId: 'invitation-2ea60',
    storageBucket: 'invitation-2ea60.appspot.com',
    iosBundleId: 'com.example.invitation',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1vdmYsoUQjGp5-JLhF6O6li80OXH2J7A',
    appId: '1:746802212180:ios:c3aed4a6acc6cc586bacc1',
    messagingSenderId: '746802212180',
    projectId: 'invitation-2ea60',
    storageBucket: 'invitation-2ea60.appspot.com',
    iosBundleId: 'com.example.invitation.RunnerTests',
  );
}