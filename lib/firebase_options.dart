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
    apiKey: 'AIzaSyDflrGqEbK_1Y8IfaNA4t3tQhfEF19mQME',
    appId: '1:617287756904:web:7fe3de8341b3844a5a5fdd',
    messagingSenderId: '617287756904',
    projectId: 'nearby-ev-charging',
    authDomain: 'nearby-ev-charging.firebaseapp.com',
    storageBucket: 'nearby-ev-charging.appspot.com',
    measurementId: 'G-W06FBP1KBY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBiRrIbdFjkLedYK7SCuYJGqagEwA1M2NM',
    appId: '1:617287756904:android:9ee35a1e13b72f1f5a5fdd',
    messagingSenderId: '617287756904',
    projectId: 'nearby-ev-charging',
    storageBucket: 'nearby-ev-charging.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCc5Fpj7zSCvmNZyvjSP0dPexS51hk-RVQ',
    appId: '1:617287756904:ios:77dc6cf135ee1bd25a5fdd',
    messagingSenderId: '617287756904',
    projectId: 'nearby-ev-charging',
    storageBucket: 'nearby-ev-charging.appspot.com',
    iosClientId: '617287756904-dfksl1j76gu3lua2lrbufh2uah9p3jil.apps.googleusercontent.com',
    iosBundleId: 'com.nearbyevcharging.app.nearbyev',
  );
}
