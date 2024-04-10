import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/screens/first_screen.dart';
import '../../controller/home_page_contoller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
        centerTitle: true,
        actions: [
          TextButton(onPressed: (){
            Get.to(const FirstScreen());
          }, child: const Text("Next"))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX<HomeController> (init:HomeController() ,
          builder: (controller){
           return
           Column(
             children: [
               Text(controller.index.value.toString(),
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