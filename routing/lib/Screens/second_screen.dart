import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:routing/Screens/first_screen.dart';
import 'package:routing/Screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SecondScreen"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(onPressed: (){
            Get.to(()=> const ThirdScree());
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: const Text("Next"),
          ),
          MaterialButton(onPressed: (){
            Get.off(()=> const FirstScreen()); 
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: const Text("Prev"),
          )
        ],
      ),
    );
  }
}