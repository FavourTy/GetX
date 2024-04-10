import 'package:di/controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FirstScreen extends StatelessWidget {
   FirstScreen({super.key});
   final controller = Get.put(HomeController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
        centerTitle: true,
      ),
      body:
      GetBuilder<HomeController> (
        init: HomeController(),
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