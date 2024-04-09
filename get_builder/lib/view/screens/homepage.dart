import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_builder/controller/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController> (init:HomeController() ,
          builder: (controller){
           return
           Column(
             children: [
               Text(controller.index.toString(),
               style: const TextStyle(
                fontSize: 20,
                         ),
                         textAlign: TextAlign.center,
               ),
               MaterialButton(onPressed: (){
                controller.increaseIndex();
               },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          color: Colors.black,
          child: const Text("Increase",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          )
             ],
           );
          },),
          
        ],
      ),
    );
  }
}