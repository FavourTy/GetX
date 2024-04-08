import 'package:get/get.dart';
import 'package:routing/Screens/first_screen.dart';
import 'package:routing/Screens/homePage.dart';
import 'package:routing/Screens/second_screen.dart';
import 'package:routing/Screens/third_screen.dart';

class Routes {
  static String homePage = '/HomePage';
  static String firstScreen = '/FirstScreen';
  static String secondScreen = '/SecondScreen';
  static String thirdScreen = '/ThirdScreen';
}
final getPages = [
GetPage(name: Routes.homePage, page: () => HomePage()),
GetPage(name: Routes.firstScreen, page: ()=> const FirstScreen()),
GetPage(name: Routes.secondScreen, page:()=> const SecondScreen()),
GetPage(name: Routes.thirdScreen, page:()=> const ThirdScree()),

];