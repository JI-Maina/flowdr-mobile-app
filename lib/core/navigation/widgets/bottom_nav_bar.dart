import 'package:flowdr_mobile_app/core/navigation/controllers/navigation_controller.dart';
import 'package:flowdr_mobile_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = NavigationController.instance;

    return Obx(
      () => BottomNavigationBar(
        currentIndex: controller.currentIndex,
        onTap: (index) {
          if (index == NavTab.more.tabIndex) {
            // Open drawer for "More" tab without changing tab state
            Scaffold.of(context).openDrawer();
          } else {
            controller.changeTabByIndex(index);
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppPallete.primary,
        unselectedItemColor: AppPallete.textTertiary,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            activeIcon: Icon(Icons.shopping_bag),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2_outlined),
            activeIcon: Icon(Icons.inventory_2),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_outlined),
            activeIcon: Icon(Icons.inventory),
            label: 'Inventory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            activeIcon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
