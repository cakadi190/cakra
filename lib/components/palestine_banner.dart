import 'package:cakra/helpers/url_helper.dart';
import 'package:flutter/material.dart';

class PalestineBanner extends StatelessWidget {
  const PalestineBanner({super.key});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await UrlHelper.openUrl('https://github.com/Safouene1/support-palestine-banner/blob/master/Markdown-pages/Support.md', context);
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Image.asset('assets/images/banner-support.png'),
      ),
    );
  }
}
