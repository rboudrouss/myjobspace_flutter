import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      routes: {
        '/home': (BuildContext context) => HomeScreen(), // 0
        '/profile': (BuildContext context) => ProfileScreen(), // 1
        '/notif': (BuildContext context) => NotifScreen(), // 2
        '/chat': (BuildContext context) => ChatListScreen(), // 3
        '/login': (BuildContext context) => LoginScreen(),
        '/getstarted': (BuildContext context) => GetStartedScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'My Job Space',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
