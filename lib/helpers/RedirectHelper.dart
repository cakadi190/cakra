import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

/// A helper class for redirecting to another route after a specified duration.
class RedirectHelper {
  /// Redirects to the specified [target] route after the specified [duration] in seconds.
  ///
  /// The [context] parameter is the BuildContext used for navigation.
  /// The [target] parameter specifies the name of the route to which redirection should occur.
  /// The [duration] parameter specifies the duration in seconds before redirection.
  ///
  /// Example:
  /// ```dart
  /// RedirectHelper.redirect(context, '/target_route_name', 5);
  /// ```
  static void redirect(BuildContext context, String target, {int duration = 5}) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.of(context).pushReplacementNamed(target);
    });
  }

  /// Opens the specified [target] URL in either an embedded browser or an external browser based on the value of [openInExternal].
  ///
  /// The [target] parameter specifies the URL to be opened.
  /// The [openInExternal] parameter indicates whether the URL should be opened in an external browser or an embedded browser.
  /// Set [openInExternal] to `true` to open the URL in an external browser, and `false` to open it in an embedded browser.
  ///
  /// Example:
  /// ```dart
  /// RedirectHelper.openUrl('https://example.com', true);
  /// ```
  static void openUrl(String target) async {
    const url = 'https://flutter.dev';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}