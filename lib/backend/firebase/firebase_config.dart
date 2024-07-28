import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCvMXcBJkWN1oeFAczN5XLACie7E-nrepE",
            authDomain: "pcbuilderassistant-b68f6.firebaseapp.com",
            projectId: "pcbuilderassistant-b68f6",
            storageBucket: "pcbuilderassistant-b68f6.appspot.com",
            messagingSenderId: "373550327785",
            appId: "1:373550327785:web:36af7037f967f5eff10d78"));
  } else {
    await Firebase.initializeApp();
  }
}
