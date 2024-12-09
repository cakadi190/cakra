import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A helper class to manage system UI overlay styles
class DeviceHelper {
  /// Sets the system UI overlay style based on the platform brightness
  ///
  /// Takes a [BuildContext] parameter to access the platform brightness and theme
  /// information. This method is typically called during widget initialization.
  void initTheme(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _setSystemUIOverlay(
        context: context,
        platformBrightness: MediaQuery.of(context).platformBrightness,
      );
    });
  }

  /// Updates the system UI overlay style based on the given parameters
  ///
  /// This method configures the status bar and navigation bar appearance based on:
  /// - Current theme from [context]
  /// - System [platformBrightness]
  void _setSystemUIOverlay({
    required BuildContext context,
    required Brightness platformBrightness,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = platformBrightness == Brightness.dark;

    final statusBarColor = colorScheme.surface;
    final statusBarIconBrightness = isDark ? Brightness.light : Brightness.dark;
    final navigationBarColor = colorScheme.surfaceTint;
    final navigationBarIconBrightness = isDark ? Brightness.light : Brightness.dark;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        statusBarIconBrightness: statusBarIconBrightness,
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: navigationBarIconBrightness,
      ),
    );
  }
}