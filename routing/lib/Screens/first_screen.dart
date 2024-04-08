import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:routing/routes.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen",
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(onPressed: (){
           Get.toNamed(Routes.secondScreen);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: const Text("Next"),
          ),
          MaterialButton(onPressed: (){
           Get.offNamed(Routes.homePage);
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