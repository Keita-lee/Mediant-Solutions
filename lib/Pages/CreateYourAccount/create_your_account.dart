import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/CommonComponants/Buttons/green_button.dart';
import 'package:mediant_solutions_form/Pages/Form/form_componants/form_container.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class CreateYourAccount extends StatelessWidget {
  const CreateYourAccount({super.key});

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;
    return Dialog(
      insetPadding: EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      child: Center(
        child: Container(
          width: widthDevice * 0.48,
          height: heightDevice * 0.64,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Create Your Account\n',
                        style: FontText(context).headingLarge,
                      ),
                      const SizedBox(height: 10),
                      FormContainer(
                        labelText: 'E-mail',
                        controller: TextEditingController(),
                        isEmail: true,
                      ),
                      const SizedBox(height: 10),
                      FormContainer(
                        labelText: 'Password',
                        controller: TextEditingController(),
                        isPassword: true,
                      ),
                      const SizedBox(height: 10),
                      FormContainer(
                        labelText: 'Confirm Password',
                        controller: TextEditingController(),
                        isPassword: true,
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomButton(
                          label: 'Continue',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 1,
                child: Container(
                  color: CustomColors.navyBlue,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: const Icon(Icons.close,
                                color: Colors.white, size: 18), // Reduced size
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            padding: EdgeInsets.zero, // Remove default padding
                            constraints:
                                BoxConstraints(), // Remove minimum size constraints
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'WELCOME',
                          style: FontText(context).headingLargeWhite,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Thank you for creating an account with us! We\'re thrilled to have you as part of our community. Your account is your gateway to exclusive content, personalized updates, and a seamless experience. We\'re excited to support you and make sure you get the most out of our platform!',
                          style: FontText(context).bodySmallWhite,
                        ),
                        const SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'images/create_your_account.png',
                            width: widthDevice * 0.2,
                            height: heightDevice * 0.2,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
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

// Update the show method
void show(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.transparent,
    builder: (BuildContext context) => const CreateYourAccount(),
  );
}
