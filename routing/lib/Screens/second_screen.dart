import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:routing/routes.dart';
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
            Get.toNamed(Routes.thirdScreen);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: const Text("Next"),
          ),
          MaterialButton(onPressed: (){
           Get.offNamed(Routes.firstScreen);
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