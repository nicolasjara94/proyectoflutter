import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter/material.dart';
import 'package:proyectoflutter/servicios/home_page.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Asegúrate de que Flutter está inicializado.

  // Inicializar Firebase con la configuración adecuada para la plataforma.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp()); // Luego corre tu aplicación.
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Autos OG',
      home: HomePage(),
    );
  }
}

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
    apiKey: 'AIzaSyBOBONmsbkODJWKud1scqIF_QQf-_Ay0qE',
    appId: '1:863305719620:web:6a0423cd667700c18d4111',
    messagingSenderId: '863305719620',
    projectId: 'proyectoflutter-44924',
    authDomain: 'proyectoflutter-44924.firebaseapp.com',
    storageBucket: 'proyectoflutter-44924.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBamyir3q7WN3zwtQIDQkUbdKMIaTo4POk',
    appId: '1:863305719620:android:5b42237303e10d488d4111',
    messagingSenderId: '863305719620',
    projectId: 'proyectoflutter-44924',
    storageBucket: 'proyectoflutter-44924.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAGTwCSTI_y-YlMPfHOiqeP1NPFK-OGwgE',
    appId: '1:863305719620:ios:3d3a3282d24dbba88d4111',
    messagingSenderId: '863305719620',
    projectId: 'proyectoflutter-44924',
    storageBucket: 'proyectoflutter-44924.firebasestorage.app',
    iosBundleId: 'com.example.proyectoflutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAGTwCSTI_y-YlMPfHOiqeP1NPFK-OGwgE',
    appId: '1:863305719620:ios:3d3a3282d24dbba88d4111',
    messagingSenderId: '863305719620',
    projectId: 'proyectoflutter-44924',
    storageBucket: 'proyectoflutter-44924.firebasestorage.app',
    iosBundleId: 'com.example.proyectoflutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBOBONmsbkODJWKud1scqIF_QQf-_Ay0qE',
    appId: '1:863305719620:web:745f0b343054da2c8d4111',
    messagingSenderId: '863305719620',
    projectId: 'proyectoflutter-44924',
    authDomain: 'proyectoflutter-44924.firebaseapp.com',
    storageBucket: 'proyectoflutter-44924.firebasestorage.app',
  );
}
