import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/CommonComponants/Buttons/green_button.dart';

import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class AccountCreatedSuccessfully extends StatelessWidget {
  const AccountCreatedSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;
    return Dialog(
      insetPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      child: Container(
        width: widthDevice * 0.35,
        height: heightDevice * 0.50,
        decoration: BoxDecoration(
          color: CustomColors.navyBlue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Account Created Successfully',
                style:
                    FontText(context).headingLargeWhite.copyWith(fontSize: 26),
              ),
              SizedBox(height: heightDevice * 0.02),
              Text(
                'Thank you for creating an account with us! We\'re thrilled to have you as part of our community. Your account is your gateway to exclusive content, personalized updates, and a seamless experience. We\'re excited to support you and make sure you get the most out of our platform!',
                style: FontText(context).bodySmallWhite.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'images/account_created_successfully.png',
                        width: widthDevice * 0.15,
                        height: heightDevice * 0.15,
                        fit: BoxFit.contain,
                      ),
                    ),
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
    builder: (BuildContext context) => const AccountCreatedSuccessfully(),
  );
}
