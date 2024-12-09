import 'package:cakra/components/palestine_banner.dart';
import 'package:cakra/helpers/app_review_handler.dart';
import 'package:cakra/helpers/url_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  PackageInfo? _packageInfo;

  @override
  void initState() {
    super.initState();
    _loadPackageInfo();
  }

  Future<void> _loadPackageInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = packageInfo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tentang Aplikasi',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const PalestineBanner(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 24),
                  SizedBox(height: 128, width: 128, child: Image.asset('assets/images/logo-main.png')),
                  const SizedBox(height: 16),
                  Text("Cakap Pramuka", style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary.withOpacity(1))),
                  const SizedBox(
                    height: 2,
                  ),
                  if (_packageInfo != null)
                    Text(
                      '${_packageInfo?.version}',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.normal, color: Theme.of(context).colorScheme.primary.withOpacity(0.8)),
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                  ..._buildFooterLink(),
                ],
              ),
            ),
          ),
          _footer()
        ],
      ),
    );
  }

  Widget _footer() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodySmall,
              children: [
                const TextSpan(text: "Copyright "),
                TextSpan(
                  text: "Kodingin Digital Nusantara",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      UrlHelper.openUrl('https://www.kokodingin.id', context);
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildFooterLink() {
    return [
      ListTile(
        leading: const Icon(Icons.info_outline),
        title: const Text('Tentang Kami'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // Handle tap event for Item 1
        },
      ),
      ListTile(
        leading: const Icon(Icons.article_outlined),
        title: const Text('Syarat Penggunaan'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // Handle tap event for Item 2
        },
      ),
      ListTile(
        leading: const Icon(Icons.image_outlined),
        title: const Text('Kredit Aset'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // Handle tap event for Item 2
        },
      ),
      ListTile(
        leading: const Icon(Icons.bookmark_border),
        title: const Text('Daftar Pustaka'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // Handle tap event for Item 3
        },
      ),
      ListTile(
        leading: const Icon(Icons.share_outlined),
        title: const Text('Bagikan Aplikasi'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () async {
          await Share.share('Cobain aplikasi Buku Saku Pramuka "Cakra" yuk! https://play.google.com/store/apps/details?id=com.kodinus.cakra', subject: "Cobain Aplikasi Cakra Yuk!");
        },
      ),
      const ListTile(
        leading: Icon(Icons.star_border),
        title: Text('Nilai Aplikasi'),
        trailing: Icon(Icons.chevron_right),
        onTap: AppReviewHandler.requestReview,
      ),
    ];
  }
}

