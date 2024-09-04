import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class EmailUsContainer extends StatelessWidget {
  const EmailUsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    final heightDevice = MediaQuery.of(context).size.height;

    final containerWidth = widthDevice < 600 ? 160.0 : widthDevice * 0.15;
    final containerHeight = widthDevice < 600 ? 60.0 : heightDevice * 0.12;

    return Container(
      width: containerWidth,
      height: containerHeight,
      padding: const EdgeInsets.only(left: 14),
      decoration: BoxDecoration(
        color: CustomColors.navyBlue,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email us',
            style: FontText(context).bodyMediumBlack.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'hello@mediant.co.za',
            style: FontText(context).bodySmallWhite,
          ),
        ],
      ),
    );
  }
}
