import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 30,
              child: Hero(
                tag: 'logo',
                child: Image.asset('assets/passaro.png'),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'Home',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
