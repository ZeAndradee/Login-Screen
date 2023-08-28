import 'package:flutter/material.dart';
import 'package:helloworld/counter.dart';
import 'package:helloworld/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      title: 'Rotas',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/main': (context) => const Counter()
      },
    );
  }
}
