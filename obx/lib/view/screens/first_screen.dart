import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_page.dart';



class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
        centerTitle: true,
        
      )
      ,
      body: Column(
        children: [
          const Text("First Screen"),
          Column(
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
        ],
      ),
    );
  }
}