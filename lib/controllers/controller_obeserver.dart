import 'package:get/get.dart';
import 'package:pokebase/utiilities/extensions.dart';

class ControllerObserver extends GetxService {
  @override
  void onInit() {
    super.onInit();
    "ACTIVE MONITIORING".toLogger();
  }

  void onControllerCreated<T>(T controller) {
    "✅${T.toString()} Created".toLogger();
  }

  void onControllerDeleted<T>() {
    // if (T.toString() == "CustomerListServices") {
    //   LOGGING("✅${T.toString()} Deleted");
    // }
    "❌ ${T.toString()} Deleted".toLogger();
  }
}
