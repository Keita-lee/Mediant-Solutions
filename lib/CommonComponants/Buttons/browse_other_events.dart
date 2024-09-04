import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';
import 'package:mediant_solutions_form/Pages/Events/events.dart'; // Assuming this is where EventsPage is defined

class PurpleButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;

  const PurpleButton({
    super.key,
    this.backgroundColor = CustomColors.purple,
    this.foregroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: constraints.maxWidth,
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Events()),
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              minimumSize: const Size(0, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              'Browse Other Events',
              style: FontText(context).bodySmallWhite,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
      },
    );
  }
}
