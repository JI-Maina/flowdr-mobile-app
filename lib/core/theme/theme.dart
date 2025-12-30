import 'package:flowdr_mobile_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  /// Light theme configuration for Flowdr mobile app
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      
      // ==================== Color Scheme ====================
      colorScheme: ColorScheme.light(
        // Primary colors
        primary: AppPallete.primary,
        onPrimary: AppPallete.textOnPrimary,
        primaryContainer: AppPallete.primaryLightest,
        onPrimaryContainer: AppPallete.primaryDark,
        
        // Secondary colors (using accent teal)
        secondary: AppPallete.accent,
        onSecondary: AppPallete.white,
        secondaryContainer: AppPallete.accentLight,
        onSecondaryContainer: AppPallete.accentDark,
        
        // Tertiary colors
        tertiary: AppPallete.primaryLight,
        onTertiary: AppPallete.white,
        tertiaryContainer: AppPallete.primaryLighter,
        onTertiaryContainer: AppPallete.primaryDark,
        
        // Error colors
        error: AppPallete.error,
        onError: AppPallete.white,
        errorContainer: AppPallete.errorLight,
        onErrorContainer: AppPallete.errorDark,
        
        // Surface colors
        surface: AppPallete.surface,
        onSurface: AppPallete.textPrimary,
        surfaceVariant: AppPallete.surfaceVariant,
        onSurfaceVariant: AppPallete.textSecondary,
        
        // Background
        background: AppPallete.background,
        onBackground: AppPallete.textPrimary,
        
        // Outline
        outline: AppPallete.border,
        outlineVariant: AppPallete.gray200,
        
        // Shadow
        shadow: AppPallete.shadow,
      ),
      
      // ==================== Scaffold ====================
      scaffoldBackgroundColor: AppPallete.background,
      
      // ==================== App Bar Theme ====================
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: false,
        backgroundColor: AppPallete.surface,
        foregroundColor: AppPallete.textPrimary,
        iconTheme: const IconThemeData(
          color: AppPallete.textPrimary,
          size: 24,
        ),
        titleTextStyle: const TextStyle(
          color: AppPallete.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.15,
        ),
      ),
      
      // ==================== Card Theme ====================
      cardTheme: CardThemeData(
        elevation: 0,
        color: AppPallete.surface,
        shadowColor: AppPallete.shadow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: AppPallete.border,
            width: 1,
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      
      // ==================== Input Decoration Theme ====================
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppPallete.surfaceVariant,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppPallete.border,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppPallete.border,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppPallete.primary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppPallete.error,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppPallete.error,
            width: 2,
          ),
        ),
        labelStyle: const TextStyle(
          color: AppPallete.textSecondary,
          fontSize: 14,
        ),
        hintStyle: const TextStyle(
          color: AppPallete.textTertiary,
          fontSize: 14,
        ),
      ),
      
      // ==================== Button Themes ====================
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppPallete.primary,
          foregroundColor: AppPallete.textOnPrimary,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppPallete.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          side: const BorderSide(
            color: AppPallete.primary,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppPallete.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      
      // ==================== Floating Action Button Theme ====================
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppPallete.primary,
        foregroundColor: AppPallete.textOnPrimary,
        elevation: 4,
        shape: CircleBorder(),
      ),
      
      // ==================== Chip Theme ====================
      chipTheme: ChipThemeData(
        backgroundColor: AppPallete.surfaceVariant,
        deleteIconColor: AppPallete.textSecondary,
        disabledColor: AppPallete.gray200,
        selectedColor: AppPallete.primaryLightest,
        secondarySelectedColor: AppPallete.accentLight,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        labelStyle: const TextStyle(
          color: AppPallete.textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        secondaryLabelStyle: const TextStyle(
          color: AppPallete.primaryDark,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: AppPallete.border),
        ),
      ),
      
      // ==================== Divider Theme ====================
      dividerTheme: const DividerThemeData(
        color: AppPallete.divider,
        thickness: 1,
        space: 1,
      ),
      
      // ==================== Icon Theme ====================
      iconTheme: const IconThemeData(
        color: AppPallete.textSecondary,
        size: 24,
      ),
      
      // ==================== Text Theme ====================
      textTheme: const TextTheme(
        // Display styles (largest)
        displayLarge: TextStyle(
          fontSize: 57,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.25,
          color: AppPallete.textPrimary,
        ),
        displayMedium: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          color: AppPallete.textPrimary,
        ),
        displaySmall: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          color: AppPallete.textPrimary,
        ),
        
        // Headline styles
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
          color: AppPallete.textPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
          color: AppPallete.textPrimary,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
          color: AppPallete.textPrimary,
        ),
        
        // Title styles
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
          color: AppPallete.textPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.15,
          color: AppPallete.textPrimary,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.1,
          color: AppPallete.textPrimary,
        ),
        
        // Body styles
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: AppPallete.textPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: AppPallete.textPrimary,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: AppPallete.textSecondary,
        ),
        
        // Label styles
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.1,
          color: AppPallete.textPrimary,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
          color: AppPallete.textPrimary,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
          color: AppPallete.textSecondary,
        ),
      ),
      
      // ==================== Bottom Navigation Bar Theme ====================
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppPallete.surface,
        selectedItemColor: AppPallete.primary,
        unselectedItemColor: AppPallete.textTertiary,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
      
      // ==================== Dialog Theme ====================
      dialogTheme: DialogThemeData(
        backgroundColor: AppPallete.surface,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        titleTextStyle: const TextStyle(
          color: AppPallete.textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        contentTextStyle: const TextStyle(
          color: AppPallete.textSecondary,
          fontSize: 14,
        ),
      ),
      
      // ==================== Snackbar Theme ====================
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppPallete.gray800,
        contentTextStyle: const TextStyle(
          color: AppPallete.white,
          fontSize: 14,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
