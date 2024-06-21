import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/login_screen.dart';
import 'stores/login_store.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<LoginStore>(
      create: (_) => LoginStore(),
      child: MaterialApp(
        title: 'MobX Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.tealAccent[700],
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.tealAccent[700],
          ),
          scaffoldBackgroundColor: Colors.tealAccent[700],
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.tealAccent[700],
            selectionColor: Colors.tealAccent[700],
            selectionHandleColor: Colors.tealAccent[700],
          ),
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
