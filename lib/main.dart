
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:map_april23/api/firebase_api.dart';
import 'package:map_april23/firebase_options.dart';
import 'package:map_april23/pages/notification_page.dart';
import 'pages/home_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      navigatorKey: navigatorKey,
      routes: {
        '/notification_screen':(context) => const NotificationPage(),},);
      }
    
  }
