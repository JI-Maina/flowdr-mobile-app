import 'package:get/get.dart';

enum NavTab {
  dashboard(0),
  orders(1),
  products(2),
  inventory(3),
  more(4);

  final int tabIndex;
  const NavTab(this.tabIndex);
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  final _currentIndex = NavTab.dashboard.obs;
  NavTab _lastNonMoreTab = NavTab.dashboard;

  NavTab get currentTab => _currentIndex.value;
  int get currentIndex => _currentIndex.value.tabIndex;
  NavTab get lastNonMoreTab => _lastNonMoreTab;

  void changeTab(NavTab tab) {
    if (tab != NavTab.more) {
      _lastNonMoreTab = tab;
    }
    _currentIndex.value = tab;
  }

  void changeTabByIndex(int index) {
    if (index >= 0 && index < NavTab.values.length) {
      final tab = NavTab.values[index];
      changeTab(tab);
    }
  }
}
