import 'package:flutter/material.dart';

import 'home_page.dart';
void main() async {
  // const firebaseConfig = {
  //   'apiKey': "AIzaSyAzUQX_EeGfQf-eA6FbShfSMi0XAe-toWs",
  //   'authDomain': "clothes-shop-b872d.firebaseapp.com",
  //   'projectId': "clothes-shop-b872d",
  //   'storageBucket': "clothes-shop-b872d.appspot.com",
  //   'messagingSenderId': "915307088033",
  //   'appId': "1:915307088033:web:c2d1c3d90c975534d488e0"
  // };
  // const firebaseConfig = {
  //   'apiKey': "AIzaSyBrvghprStaKzoq7PFOFtzhwjxJQmk2rrs",
  //   'authDomain': "god-clothes.firebaseapp.com",
  //   'projectId': "god-clothes",
  //   'storageBucket': "god-clothes.appspot.com",
  //   'messagingSenderId': "590347936863",
  //   'appId': "1:590347936863:web:a2e1fd7c40b58228f0a7ea"
  // };
//
// // Initialize Firebase
//   FirebaseApp defaultApp = await Firebase.initializeApp(
//     options: FirebaseOptions.fromMap(firebaseConfig)
//   );

  // const app = FirebaseAuth.initializeApp(firebaseConfig);
  WidgetsFlutterBinding.ensureInitialized();
 runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gods Clothes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
          textTheme: const TextTheme(
      caption: TextStyle(fontSize: 22, color: Colors.white),
    ),
      ),

      home: HomePage(),
    );
  }
}
