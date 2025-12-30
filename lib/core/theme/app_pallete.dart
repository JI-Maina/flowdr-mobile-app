import 'package:flutter/material.dart';

/// App color palette for Flowdr mobile app
/// Light theme with purple as the primary brand color
class AppPallete {
  // ==================== Brand Colors (Purple) ====================
  /// Primary purple - Main brand color
  static const Color primary = Color(0xFF7C3AED); // Purple 600 - Rich purple
  
  /// Primary variants
  static const Color primaryLight = Color(0xFFA78BFA); // Purple 400 - Lighter purple
  static const Color primaryDark = Color(0xFF6D28D9); // Purple 700 - Darker purple
  static const Color primaryLighter = Color(0xFFDDD6FE); // Purple 200 - Light purple
  static const Color primaryLightest = Color(0xFFF5F3FF); // Purple 50 - Lightest purple
  
  // ==================== Background Colors ====================
  /// Main background color (white/off-white)
  static const Color background = Color(0xFFFFFFFF);
  
  /// Secondary background (subtle gray)
  static const Color backgroundSecondary = Color(0xFFF9FAFB);
  
  /// Surface color for cards, sheets
  static const Color surface = Color(0xFFFFFFFF);
  
  /// Surface variant for elevated elements
  static const Color surfaceVariant = Color(0xFFF3F4F6);
  
  // ==================== Text Colors ====================
  /// Primary text color (dark gray/black)
  static const Color textPrimary = Color(0xFF111827);
  
  /// Secondary text color
  static const Color textSecondary = Color(0xFF6B7280);
  
  /// Tertiary/disabled text color
  static const Color textTertiary = Color(0xFF9CA3AF);
  
  /// Text on primary color (white)
  static const Color textOnPrimary = Color(0xFFFFFFFF);
  
  /// Text on dark backgrounds
  static const Color textOnDark = Color(0xFFFFFFFF);
  
  // ==================== Border & Divider Colors ====================
  /// Border color for inputs, cards
  static const Color border = Color(0xFFE5E7EB);
  
  /// Border color for focused elements
  static const Color borderFocused = Color(0xFF7C3AED);
  
  /// Divider color
  static const Color divider = Color(0xFFE5E7EB);
  
  // ==================== Status Colors ====================
  /// Success/Green
  static const Color success = Color(0xFF10B981); // Green 500
  static const Color successLight = Color(0xFFD1FAE5); // Green 100
  static const Color successDark = Color(0xFF059669); // Green 600
  
  /// Error/Red
  static const Color error = Color(0xFFEF4444); // Red 500
  static const Color errorLight = Color(0xFFFEE2E2); // Red 100
  static const Color errorDark = Color(0xFFDC2626); // Red 600
  
  /// Warning/Orange
  static const Color warning = Color(0xFFF59E0B); // Amber 500
  static const Color warningLight = Color(0xFFFEF3C7); // Amber 100
  static const Color warningDark = Color(0xFFD97706); // Amber 600
  
  /// Info/Blue
  static const Color info = Color(0xFF3B82F6); // Blue 500
  static const Color infoLight = Color(0xFFDBEAFE); // Blue 100
  static const Color infoDark = Color(0xFF2563EB); // Blue 600
  
  // ==================== Accent Colors ====================
  /// Accent color (teal/cyan - from logo gradient, matching the 'o' in flowdr)
  static const Color accent = Color(0xFF14B8A6); // Teal 500 - Main teal from logo
  static const Color accentLight = Color(0xFF5EEAD4); // Teal 300 - Light teal
  static const Color accentDark = Color(0xFF0D9488); // Teal 600 - Darker teal
  static const Color accentLighter = Color(0xFFCCFBF1); // Teal 100 - Lightest teal
  
  // ==================== Neutral Colors ====================
  /// White
  static const Color white = Color(0xFFFFFFFF);
  
  /// Black
  static const Color black = Color(0xFF000000);
  
  /// Gray scale
  static const Color gray50 = Color(0xFFF9FAFB);
  static const Color gray100 = Color(0xFFF3F4F6);
  static const Color gray200 = Color(0xFFE5E7EB);
  static const Color gray300 = Color(0xFFD1D5DB);
  static const Color gray400 = Color(0xFF9CA3AF);
  static const Color gray500 = Color(0xFF6B7280);
  static const Color gray600 = Color(0xFF4B5563);
  static const Color gray700 = Color(0xFF374151);
  static const Color gray800 = Color(0xFF1F2937);
  static const Color gray900 = Color(0xFF111827);
  
  // ==================== Special Colors ====================
  /// Transparent
  static const Color transparent = Colors.transparent;
  
  /// Shadow color
  static const Color shadow = Color(0x1A000000);
  
  /// Overlay color for modals
  static const Color overlay = Color(0x80000000);
  
  // ==================== Gradient Colors ====================
  /// Primary gradient (purple to teal - modern and vibrant)
  static const List<Color> primaryGradient = [
    Color(0xFF7C3AED), // Purple 600 - Rich purple
    Color(0xFFA78BFA), // Purple 400 - Medium purple
    Color(0xFF14B8A6), // Teal 500 - Teal accent
  ];
  
  /// Logo gradient (purple to teal for logo redesign)
  static const List<Color> logoGradient = [
    Color(0xFF6D28D9), // Purple 700 - Darker purple
    Color(0xFF7C3AED), // Purple 600 - Main purple
    Color(0xFF14B8A6), // Teal 500 - Teal accent
  ];
  
  /// Light background gradient (purple-tinted)
  static const List<Color> backgroundGradient = [
    Color(0xFFF5F3FF), // Light purple
    Color(0xFFF0FDFA), // Light teal
  ];
  
  /// Subtle gradient for backgrounds
  static const List<Color> subtleGradient = [
    Color(0xFFF9FAFB),
    Color(0xFFFFFFFF),
  ];
  
  // ==================== Order Status Colors ====================
  /// Draft status
  static const Color statusDraft = Color(0xFF9CA3AF);
  
  /// Pending status
  static const Color statusPending = Color(0xFFF59E0B);
  
  /// Approved/Active status
  static const Color statusApproved = Color(0xFF10B981);
  
  /// Completed status
  static const Color statusCompleted = Color(0xFF059669);
  
  /// Cancelled status
  static const Color statusCancelled = Color(0xFFEF4444);
  
  // ==================== Payment Status Colors ====================
  /// Paid status
  static const Color paymentPaid = Color(0xFF10B981);
  
  /// Partial payment
  static const Color paymentPartial = Color(0xFFF59E0B);
  
  /// Overdue/Unpaid
  static const Color paymentUnpaid = Color(0xFFEF4444);
  
  /// Overpaid
  static const Color paymentOverpaid = Color(0xFF8B5CF6); // Purple 500
}
