import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_page_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
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