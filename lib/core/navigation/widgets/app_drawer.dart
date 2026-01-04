import 'package:flowdr_mobile_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Drawer Header
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: AppPallete.logoGradient,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/logo/flowdr-logo.png',
                  height: 50,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Text(
                      'Flowdr',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppPallete.white,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 8),
                const Text(
                  'Business Management',
                  style: TextStyle(fontSize: 14, color: AppPallete.white),
                ),
              ],
            ),
          ),

          // Navigation Items
          _DrawerItem(
            icon: Icons.people_outline,
            activeIcon: Icons.people,
            title: 'Users',
            onTap: () {
              Navigator.pop(context);
              Get.toNamed('/users');
            },
          ),
          const Divider(height: 1),
          _DrawerItem(
            icon: Icons.settings_outlined,
            activeIcon: Icons.settings,
            title: 'Settings',
            onTap: () {
              Navigator.pop(context);
              Get.toNamed('/settings');
            },
          ),
          _DrawerItem(
            icon: Icons.person_outline,
            activeIcon: Icons.person,
            title: 'Profile',
            onTap: () {
              Navigator.pop(context);
              // TODO: Navigate to profile screen
            },
          ),
          const Divider(height: 1),
          _DrawerItem(
            icon: Icons.logout_outlined,
            title: 'Logout',
            onTap: () {
              Navigator.pop(context);
              // TODO: Implement logout
              Get.offAllNamed('/login');
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final IconData icon;
  final IconData? activeIcon;
  final String title;
  final VoidCallback onTap;

  const _DrawerItem({
    required this.icon,
    this.activeIcon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppPallete.textPrimary),
      title: Text(
        title,
        style: const TextStyle(
          color: AppPallete.textPrimary,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
    );
  }
}
