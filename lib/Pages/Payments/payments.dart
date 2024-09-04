import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/CommonComponants/Buttons/discount_code_button.dart';
import 'package:mediant_solutions_form/CommonComponants/Buttons/green_button.dart';
import 'package:mediant_solutions_form/Pages/Form/form_componants/dropdown_button.dart';

import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;
    return Dialog(
      insetPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      child: Center(
        child: Container(
          width: widthDevice * 0.48,
          height: heightDevice * 0.64,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Order Summary',
                            style: FontText(context).headingLarge,
                          ),
                        ),
                      ),
                      Text(
                        'Event Name:',
                        style: FontText(context).bodyMediumBlack,
                      ),
                      Text(
                        'Number of Attendees: ${const NumberDropdown()}',
                        style: FontText(context).bodySmallBlackBold,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 10),
                      DiscountCodeButton(onPressed: () {}),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Early bird discount: ',
                                  style: FontText(context).bodySmallBlackBold,
                                ),
                                TextSpan(
                                  text: '15%\n\n',
                                  style:
                                      FontText(context).bodySmallBlack.copyWith(
                                            color: CustomColors.green,
                                          ),
                                ),
                                TextSpan(
                                  text: 'Account Holder Discount: ',
                                  style: FontText(context).bodySmallBlackBold,
                                ),
                                TextSpan(
                                  text: '10%\n\n',
                                  style: FontText(context)
                                      .bodySmallBlackBold
                                      .copyWith(
                                        color: CustomColors.green,
                                      ),
                                ),
                                TextSpan(
                                  text: 'Group Discount: ',
                                  style: FontText(context).bodySmallBlackBold,
                                ),
                                TextSpan(
                                  text: '30%',
                                  style: FontText(context)
                                      .bodySmallBlackBold
                                      .copyWith(
                                        color: CustomColors.green,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        'Original Price: R',
                        style: FontText(context).bodySmallBlackBold,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Total Price: R',
                        style: FontText(context).bodySmallBlackBold,
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomCenter,
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
                  decoration: const BoxDecoration(
                    color: CustomColors.navyBlue,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
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
                                const BoxConstraints(), // Remove minimum size constraints
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Thank You!',
                          style: FontText(context).headingLargeWhite,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Thank you for choosing one of our events! We’re delighted to have you join us and appreciate your trust in our offerings. We’re committed to making this experience memorable and enriching for you. If you have any questions or need further information, we’re here to help. See you at the event!',
                          style: FontText(context).bodySmallWhite,
                        ),
                        const Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'images/payments.png',
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
    builder: (BuildContext context) => const Payments(),
  );
}
