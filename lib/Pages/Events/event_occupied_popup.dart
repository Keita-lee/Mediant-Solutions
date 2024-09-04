import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/CommonComponants/Buttons/green_button.dart';

import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class EventFull extends StatelessWidget {
  const EventFull({super.key});

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;
    return Dialog(
      insetPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      child: Container(
        width: widthDevice * 0.46,
        height: heightDevice * 0.64,
        decoration: BoxDecoration(
          color: CustomColors.navyBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Apologies!',
                style:
                    FontText(context).headingLargeWhite.copyWith(fontSize: 26),
              ),
              SizedBox(height: heightDevice * 0.02),
              Text(
                'We apologize for any inconvenience, but it appears that the event you have selected is currently at maximum capacity. However, we would be happy to place you on the waitlist, and we will notify you promptly if a spot becomes available. Thank you for your understanding, and please let us know if you would like to be added to the waitlist.',
                style: FontText(context).bodySmallWhite.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'images/pop_up.png',
                  width: widthDevice * 0.2,
                  height: heightDevice * 0.2,
                  fit: BoxFit.contain,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  CustomButton(
                    onPressed: () {
                      // Browse other events functionality
                    },
                    label: 'Browse other Events',
                    backgroundColor: const Color.fromARGB(255, 107, 99, 255),
                  ),
                  const Spacer(),
                  CustomButton(
                    label: 'Continue',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Update the show method
void show(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.transparent,
    builder: (BuildContext context) => const EventFull(),
  );
}
