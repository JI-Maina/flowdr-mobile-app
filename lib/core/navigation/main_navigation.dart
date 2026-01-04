import 'package:flowdr_mobile_app/core/navigation/controllers/navigation_controller.dart';
import 'package:flowdr_mobile_app/core/navigation/widgets/app_drawer.dart';
import 'package:flowdr_mobile_app/core/navigation/widgets/bottom_nav_bar.dart';
import 'package:flowdr_mobile_app/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:flowdr_mobile_app/features/inventory/presentation/pages/inventory_screen.dart';
import 'package:flowdr_mobile_app/features/orders/presentation/pages/orders_screen.dart';
import 'package:flowdr_mobile_app/features/products/presentation/pages/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNavigation extends GetView<NavigationController> {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      body: Obx(() => _buildBody()),
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }

  Widget _buildBody() {
    switch (controller.currentTab) {
      case NavTab.dashboard:
        return const DashboardScreen();
      case NavTab.orders:
        return const OrdersScreen();
      case NavTab.products:
        return const ProductsScreen();
      case NavTab.inventory:
        return const InventoryScreen();
      case NavTab.more:
        // Should not reach here, but fallback to dashboard
        return const DashboardScreen();
    }
  }
}
