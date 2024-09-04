import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class CalendarContainer extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const CalendarContainer({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: deviceWidth * 0.36,
          // height: deviceHeight * 0.24, // Remove this line
          decoration: BoxDecoration(
            color: CustomColors.green,
            borderRadius: BorderRadius.circular(15),
          ),
          child: IntrinsicHeight(
            // Add this widget
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: deviceWidth * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: FontText(context).bodyMediumBlack.copyWith(
                                color: CustomColors.white,
                              ),
                        ),
                        Text(
                          description,
                          style: FontText(context).bodySmallWhite,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
