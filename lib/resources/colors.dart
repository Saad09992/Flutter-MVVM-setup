import 'package:flutter/material.dart';

class AppColors {
  // Base colors
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;

  // Primary Colors
  static const Color primaryColor =
      Color(0xFF6200EE); // Rich purple, great for primary buttons or headers
  static const Color primaryVariant =
      Color(0xFF3700B3); // Darker variant for active elements

  // Secondary Colors
  static const Color secondaryColor =
      Color(0xFF03DAC6); // Teal shade for highlights or secondary buttons
  static const Color secondaryVariant =
      Color(0xFF018786); // Darker teal for selected or pressed states

  // AppBar and Background Colors
  static const Color appBarColor =
      Color(0xFF6200EE); // Matching the primary color
  static const Color backgroundColor =
      Color(0xFFF6F6F6); // Light grey background for a soft, modern look
  static const Color cardColor =
      Color(0xFFFFFFFF); // White for card backgrounds

  // Button Colors
  static const Color buttonColor =
      Color(0xFF6200EE); // Primary color for consistency
  static const Color buttonTextColor =
      whiteColor; // White text on buttons for contrast

  // Text Colors
  static const Color textColorPrimary =
      Color(0xFF333333); // Dark grey for primary text
  static const Color textColorSecondary =
      Color(0xFF757575); // Lighter grey for secondary text

  // Error and Warning Colors
  static const Color errorColor =
      Color(0xFFB00020); // Standard red for error messages
  static const Color warningColor =
      Color(0xFFFFC107); // Amber for warnings or alerts

  // Additional Colors
  static const Color iconColor =
      Color(0xFF757575); // Muted grey for icons to keep focus on content
  static const Color dividerColor =
      Color(0xFFBDBDBD); // Light grey for dividers
  static const Color disabledColor =
      Color(0xFFBDBDBD); // Grey for disabled elements

  // Shadow color for subtle elevation
  static const Color shadowColor = Colors.black12;
}
