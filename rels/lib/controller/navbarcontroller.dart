import 'package:get/get.dart';

class NavBarController extends GetxController {
  var tabIndex = 1.obs;
  // final GetUserSaved userSaved = GetUserSaved();

  Future<void> changeTabIndex(int index) async {
    tabIndex.value = index;
    // Get.find<SavedController>().callpostmethod();
    // await userSaved.getData();
    update();
  }
}
