import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';

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
            left: 250,
            top: 0,
            bottom: 0,
            child: Center(
              child: Text(
                'Copyright @ 2024 Mediant Solutions',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
