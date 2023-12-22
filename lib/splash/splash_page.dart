import 'package:flutter/material.dart';
import 'package:splash_animation/home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double width = 0;
  double height = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        width = 300;
        height = 300;
      });
      final nav = Navigator.of(context);
      await Future.delayed(const Duration(seconds: 3));
      nav.pushReplacement(PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomePage(),
        settings: const RouteSettings(name: '/home'),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          width: width,
          height: height,
          child: Hero(
            tag: 'logo',
            child: Image.asset(
              'assets/passaro.png',
            ),
          ),
        ),
      ),
    );
  }
}
