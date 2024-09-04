import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class ArrowButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const ArrowButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            padding: EdgeInsets.zero,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(buttonText, style: FontText(context).bodySmallBlackBold),
              const SizedBox(width: 2),
              const SizedBox(
                width: 20,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 12,
                      color: CustomColors.black,
                    ),
                    Positioned(
                      left: 6,
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 12,
                        color: CustomColors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
