import 'package:flowdr_mobile_app/core/theme/app_pallete.dart';
import 'package:flowdr_mobile_app/features/auth/presentation/controllers/auth_controller.dart';
import 'package:flowdr_mobile_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:flowdr_mobile_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flowdr_mobile_app/features/auth/presentation/widgets/auth_google_button.dart';
import 'package:flowdr_mobile_app/features/auth/presentation/widgets/auth_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreen extends GetView<AuthController> {
  SigninScreen({super.key});

  // Local form key for this screen instance
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Logo
                const AuthLogo(),
                // const SizedBox(height: 20),

                // Title
                Text(
                  "Welcome Back!",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppPallete.textPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  "Resume where you left off",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppPallete.textSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                // Form Fields
                AuthField(
                  hintText: "Email",
                  controller: controller.emailController,
                ),
                const SizedBox(height: 16),
                AuthField(
                  hintText: "Password",
                  controller: controller.passwordController,
                  obscureText: true,
                ),

                const SizedBox(height: 24),

                // Sign Up Button
                AuthGradientButton(text: "Sign In"),
                const SizedBox(height: 24),

                // Divider
                Row(
                  children: [
                    const Expanded(child: Divider(color: AppPallete.border)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "OR",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppPallete.textSecondary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Expanded(child: Divider(color: AppPallete.border)),
                  ],
                ),
                const SizedBox(height: 24),

                // Google Sign Up Button
                AuthGoogleButton(buttonText: "Continue with Google"),
                const SizedBox(height: 24),

                // Sign In Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppPallete.textSecondary,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed('/register'),
                      child: Text(
                        "Sign In",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppPallete.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
