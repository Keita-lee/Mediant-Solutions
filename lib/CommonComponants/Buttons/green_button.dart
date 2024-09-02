import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';

class GreenButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;

  const GreenButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.backgroundColor = CustomColors.green,
    this.foregroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            // Removed minWidth constraint
            maxWidth: constraints.maxWidth,
          ),
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0, // Adjusted horizontal padding
              ),
              minimumSize: const Size(0, 30),
              tapTargetSize:
                  MaterialTapTargetSize.shrinkWrap, // Added this line
            ),
            child: Text(
              label,
              style: const TextStyle(fontSize: 10),
            ),
          ),
        );
      },
    );
  }
}
