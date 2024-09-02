import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';

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
    var deviceHeight = MediaQuery.of(context).size.height;

    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: deviceWidth * 0.36,
          height: deviceHeight * 0.26,
          decoration: BoxDecoration(
            color: CustomColors.green,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: CustomColors.white,
                                ),
                      ),
                      Text(
                        description,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 11,
                              color: CustomColors.white,
                            ),
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
                    padding: const EdgeInsets.all(8.0),
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
    );
  }
}
