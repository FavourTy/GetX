import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class FirstScreen extends StatelessWidget {
   FirstScreen({super.key});
final HomeController controller= Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
        centerTitle: true,
      ),
      body:
      GetBuilder<HomeController> (
        builder: (controller) => 
        Center(
        child: Column(
          children: [
            Text(controller.name),
            MaterialButton(onPressed: (){
              controller.update();
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: Colors.black,
            child: const Text("Display Name",
            style: TextStyle(
              color: Colors.white
            ),
            ),
            )
          ],
        ),
      ),
        )
       
    );
  }
}