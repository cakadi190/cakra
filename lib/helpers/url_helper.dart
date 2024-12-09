import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  static Future<void> openUrl(String url, BuildContext context) async {
    try {
      final uri = Uri.parse(url);
      if (!await launchUrl(uri)) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(Icons.error_outline_rounded,
                    color: Colors.white, size: 24),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                      'Gagal membuka tautan $url. Periksa apakah tautan tersebut valid dan perangkat Anda terhubung ke internet.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2),
                ),
              ],
            ),
            duration: const Duration(seconds: 3),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
    } catch (_) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const Icon(Icons.error_outline_rounded,
                  color: Colors.white, size: 24),
              const SizedBox(width: 8),
              Flexible(
                child: Text('Terjadi kesalahan saat membuka tautan $url.',
                    overflow: TextOverflow.ellipsis, maxLines: 2),
              ),
            ],
          ),
          duration: const Duration(seconds: 3),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
    }
  }
}
