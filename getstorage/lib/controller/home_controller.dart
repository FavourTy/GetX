import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
   final box = GetStorage();
  String name = "Pebbles";

  void updateName  (){
    name;
    box.write('name', name);
    update();
  }

  void saveUpdateName (){
    String name = box.read("name") ?? "it has been deleted";
    print(name);
    update();
  }

   void deleteUpdateName (){
   box.remove("name");
   print("its been removed");
    update();
  }


}


