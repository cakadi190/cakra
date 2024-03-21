import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeHome extends StatelessWidget {
  const WelcomeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Selamat Datang",
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                )
            ),
          ),
          Text(
            "Selamat datang di aplikasi Cakap Pramuka",
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                )
            ),
          ),
        ],
      ),
    );
  }
}