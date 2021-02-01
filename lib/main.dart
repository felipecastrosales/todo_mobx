import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.tealAccent[700],
        accentColor: Colors.tealAccent,
        scaffoldBackgroundColor: Colors.tealAccent[700],
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.tealAccent[700],
          selectionColor: Colors.tealAccent[700], 
          selectionHandleColor: Colors.tealAccent[700],
        ),
      ),
      home: LoginScreen(),
    );
  }
}
