import 'package:flutter/material.dart';

import 'typography.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text("Typography"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TypographyScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
