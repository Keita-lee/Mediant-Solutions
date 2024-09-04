import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    final heightDevice = MediaQuery.of(context).size.height;
    return Container(
      width: widthDevice,
      height: heightDevice * 0.1,
      decoration: const BoxDecoration(
        color: CustomColors.navyBlue,
      ),
      child: Stack(
        children: [
          Positioned(
            left: widthDevice < 600 ? 0 : 250,
            right: widthDevice < 600 ? 0 : null,
            top: 0,
            bottom: 0,
            child: Center(
              child: Text(
                'Copyright @ 2024 Mediant Solutions',
                style: FontText(context).bodySmallWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
