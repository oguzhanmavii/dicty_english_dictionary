import 'package:get/state_manager.dart';

import '../../../core/theme/theme_service.dart';

class ThemeController extends GetxController {
  RxBool switchValue = RxBool(ThemeService.instance.isSavedDarkMode());

  void change(bool value) {
    switchValue.value = value;
  }
}
