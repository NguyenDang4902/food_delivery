import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/services/auth/auth_gate.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey: 'AIzaSyAp42xWJX2MpMOiJgupf-bH8-rDk0AOM9c',
          appId: '1:725637091144:android:2600ac2b86731cc170ad7d',
          messagingSenderId: '725637091144y',
          projectId: 'food-delivery-9d3b7',
          storageBucket: 'food-delivery-9d3b7.appspot.com',
        ))
      : await Firebase.initializeApp();

  runApp(MultiProvider(
    providers: [
      // theme provider
      ChangeNotifierProvider(
        create: ((context) => ThemeProvider()),
        child: const MyApp(),
      ),
      // restaurant provider
      ChangeNotifierProvider(
        create: ((context) => Restaurant()),
        child: const MyApp(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
