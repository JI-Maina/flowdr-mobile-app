import 'package:flowdr_mobile_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/logo/flowdr-logo.png',
        height: 180,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          // Fallback if logo not found
          return Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: AppPallete.logoGradient,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(28),
            ),
            child: const Center(
              child: Text(
                'F',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: AppPallete.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
