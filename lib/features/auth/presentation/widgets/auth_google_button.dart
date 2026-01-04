import 'package:flowdr_mobile_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGoogleButton extends StatelessWidget {
  final String buttonText;

  const AuthGoogleButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        // TODO: Implement Google sign up
        // AuthController.instance.signUpWithGoogle();
      },
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(double.infinity, 50),
        side: const BorderSide(color: AppPallete.border, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: AppPallete.white,
      ),
      icon: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF4285F4), // Google Blue
              Color(0xFF34A853), // Google Green
              Color(0xFFFBBC05), // Google Yellow
              Color(0xFFEA4335), // Google Red
            ],
            stops: [0.0, 0.33, 0.66, 1.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: Text(
            'G',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      label: Text(
        buttonText,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: AppPallete.textPrimary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
