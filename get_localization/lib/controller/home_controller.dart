import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = "Pebbles";

  void updateName() {
    name;

    update();
  }
}

//   void saveUpdateName() {
//     String name = box.read("name") ?? "it has been deleted";
//     print(name);
//     update();
//   }

//   void deleteUpdateName() {
//     box.remove("name");
//     print("its been removed");
//     update();
//   }
// }
