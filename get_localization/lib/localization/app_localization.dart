import 'package:get/get_navigation/get_navigation.dart';

import 'languages/en.dart';
import 'languages/sp.dart';

class AppLocalization extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en": en,
        "sp ": sp,
      };
}
