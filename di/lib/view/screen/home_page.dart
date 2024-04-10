import 'package:di/view/screen/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Di"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(onPressed: (){
              Get.to(()=>  FirstScreen());
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: Colors.black,
            child: const Text("Next page",
            style: TextStyle(
              color: Colors.white
            ),
            ),
            )
          ],
        ),
      ),
    );
  }
}