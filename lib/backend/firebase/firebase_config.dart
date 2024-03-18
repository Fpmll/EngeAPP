import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBOC3_fGmpGd-x7sfKaYOsQtvMFWozB7oE",
            authDomain: "semcodar-tutorialff-v7p9hw.firebaseapp.com",
            projectId: "semcodar-tutorialff-v7p9hw",
            storageBucket: "semcodar-tutorialff-v7p9hw.appspot.com",
            messagingSenderId: "626888579479",
            appId: "1:626888579479:web:b4db1f293c7909e5d10cd2"));
  } else {
    await Firebase.initializeApp();
  }
}
