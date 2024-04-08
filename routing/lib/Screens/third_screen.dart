import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdScree extends StatelessWidget {
  const ThirdScree({super.key});

  @override
  Widget build(BuildContext context) { 
    return  Scaffold(
     appBar: AppBar(
      title: const Text("ThirdScreen"),
     ), body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(onPressed: (){
            Get.off(()=> const ThirdScree());
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