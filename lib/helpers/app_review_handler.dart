import 'package:in_app_review/in_app_review.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;

class AppReviewHandler {
  static final InAppReview _inAppReview = InAppReview.instance;

  // Store URLs for different platforms
  static const String _androidStoreUrl = 'market://details?id=';
  static const String _iosStoreUrl = 'https://apps.apple.com/app/id';
  static const String _macStoreUrl = 'macappstore://apps.apple.com/app/id';

  static Future<void> openStoreListing() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String url = '';

    if (Platform.isAndroid) {
      url = '$_androidStoreUrl${packageInfo.packageName}';
    } else if (Platform.isIOS) {
      // Replace YOUR_IOS_APP_ID with your actual App Store ID
      url = '$_iosStoreUrl/YOUR_IOS_APP_ID';
    } else if (Platform.isMacOS) {
      // Replace YOUR_MACOS_APP_ID with your actual Mac App Store ID
      url = '$_macStoreUrl/YOUR_MACOS_APP_ID';
    }

    if (url.isNotEmpty) {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    }
  }

  static Future<void> requestReview() async {
    try {
      final available = await _inAppReview.isAvailable();

      if (available) {
        await _inAppReview.requestReview();
      } else {
        // Fallback to store listing if in-app review is not available
        await openStoreListing();
      }
    } catch (e) {
      // Handle any errors by falling back to store listing
      await openStoreListing();
    }
  }
}
