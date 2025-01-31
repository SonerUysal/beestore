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
    apiKey: 'AIzaSyA_ChxJ3fvH5en-0tZzqKSo3V82vIccIbA',
    appId: '1:1056842845949:web:007d3b5010b8ff74e1f894',
    messagingSenderId: '1056842845949',
    projectId: 'beestore-snr',
    authDomain: 'beestore-snr.firebaseapp.com',
    storageBucket: 'beestore-snr.appspot.com',
    measurementId: 'G-BS3REDWV0B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyConp3acoalJb5Y75C9NswxNYRkFwSruxs',
    appId: '1:1056842845949:android:5fa132ed7d7987a7e1f894',
    messagingSenderId: '1056842845949',
    projectId: 'beestore-snr',
    storageBucket: 'beestore-snr.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7acyk99jbjO_Z0GvYXh1HJY2CKecLGmI',
    appId: '1:1056842845949:ios:dda8a8628da97f11e1f894',
    messagingSenderId: '1056842845949',
    projectId: 'beestore-snr',
    storageBucket: 'beestore-snr.appspot.com',
    iosBundleId: 'com.example.ders21',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7acyk99jbjO_Z0GvYXh1HJY2CKecLGmI',
    appId: '1:1056842845949:ios:dda8a8628da97f11e1f894',
    messagingSenderId: '1056842845949',
    projectId: 'beestore-snr',
    storageBucket: 'beestore-snr.appspot.com',
    iosBundleId: 'com.example.ders21',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA_ChxJ3fvH5en-0tZzqKSo3V82vIccIbA',
    appId: '1:1056842845949:web:d76cf06614a85b64e1f894',
    messagingSenderId: '1056842845949',
    projectId: 'beestore-snr',
    authDomain: 'beestore-snr.firebaseapp.com',
    storageBucket: 'beestore-snr.appspot.com',
    measurementId: 'G-2G9YFXTLYY',
  );
}
