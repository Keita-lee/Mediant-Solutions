import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';

class CalendarContainer extends StatelessWidget {
  const CalendarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: deviceWidth * 0.3,
          height: deviceHeight * 0.24,
          decoration: BoxDecoration(
            color: CustomColors.green,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'All of our Upcoming events:',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  overflow: TextOverflow.ellipsis,
                                  color: CustomColors.white,
                                ),
                      ),
                      Text(
                        'Welcome to our upcoming events! We\'re thrilled to have you join us as we explore a diverse range of exciting opportunities, designed to inspire, educate, and connect. Whether you\'re looking to learn something new, meet like-minded individuals, or simply enjoy a unique experience, our events promise to deliver something special for everyone. We can\'t wait to see you there!',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 9,
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
                      'images/calendar.png', // Replace with your image path
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
