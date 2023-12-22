import 'package:flutter/material.dart';
import 'package:splash_animation/splash/splash_page.dart';

import 'home/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0,
          ),
          brightness: Brightness.dark,
          colorSchemeSeed: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => const HomePage(),
        }
        //home: const SplashPage(),
        );
  }
}
