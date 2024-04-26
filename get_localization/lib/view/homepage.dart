// Localization involves translating languages in mobile apps

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'first_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                Get.to(() => FirstScreen());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: Colors.black,
              child: const Text(
                "Next page",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
