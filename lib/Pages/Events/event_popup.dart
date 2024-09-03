import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/CommonComponants/Buttons/green_button.dart';
import 'package:mediant_solutions_form/Pages/CreateYourAccount/create_your_account.dart';
import 'package:mediant_solutions_form/Pages/Form/form_main_page.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class EventPopUp extends StatelessWidget {
  const EventPopUp({
    super.key,
    required this.imageUrl,
    required this.eventName,
    required this.eventDescription,
    required this.buttonText,
    required this.onButtonPressed,
  });

  final String imageUrl;
  final String eventName;
  final String eventDescription;
  final String buttonText;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    final heightDevice = MediaQuery.of(context).size.height;
    Future openCreateYourAccountDialog() => showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.all(0),
            child: CreateYourAccount(),
          );
        });

    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          SizedBox(
            width: widthDevice * 0.46,
            height: heightDevice * 0.64,
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.network(
                        imageUrl,
                        width: double.infinity,
                        height: heightDevice * 0.24,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: widthDevice * 0.10,
                        height: heightDevice * 0.07,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 70, 59),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              'Exclusive Offers End \n 18 Jan 2024',
                              style: FontText(context).bodySmallWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Event name
                            Text(
                              eventName,
                              style: FontText(context).bodyMediumBlack,
                            ),
                            const SizedBox(height: 4),
                            // Event description
                            Text(
                              eventDescription,
                              maxLines: 4,
                              style: FontText(context).bodySmallBlack,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Event Location:',
                                  style: FontText(context).bodySmallBlackBold,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Event Date:',
                                  style: FontText(context).bodySmallBlackBold,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Event Time:',
                                  style: FontText(context).bodySmallBlackBold,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Ticket Prices:',
                                  style: FontText(context).bodySmallBlackBold,
                                ),
                              ],
                            ),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                EventDetailText(),
                                SizedBox(height: 8),
                                EventDetailText(),
                                SizedBox(height: 8),
                                EventDetailText(),
                                SizedBox(height: 8),
                                EventDetailText(),
                              ],
                            ),
                            Container(
                              height: 80,
                              width: 1,
                              color: Colors.grey,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: CustomColors.green,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Exclusive Offers Available:',
                                        style: FontText(context).bodySmallWhite,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Account Holder Discount:',
                                                style: FontText(context)
                                                    .bodySmallBlack,
                                              ),
                                              Text(
                                                'Group Discount:',
                                                style: FontText(context)
                                                    .bodySmallBlack,
                                              ),
                                              Text(
                                                'Early Bird Discount:',
                                                style: FontText(context)
                                                    .bodySmallBlack,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(width: 8),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '30%',
                                                style: FontText(context)
                                                    .bodySmallBlack,
                                              ),
                                              Text(
                                                '50%',
                                                style: FontText(context)
                                                    .bodySmallBlack,
                                              ),
                                              Text(
                                                '10%',
                                                style: FontText(context)
                                                    .bodySmallBlack,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 16),
                        child: Row(
                          children: [
                            Text(
                              'Don\'t have an account? ',
                              style: FontText(context).bodySmallBlack,
                            ),
                            GestureDetector(
                              onTap: () {
                                openCreateYourAccountDialog();
                              },
                              child: Text(
                                'Create an account',
                                style: FontText(context).bodySmallUnderline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Material(child: FormMainPage())),
                          );
                        },
                        label: 'Register for this Event',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'images/pop_up.png',
              width: widthDevice * 0.15,
              height: heightDevice * 0.15,
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: const Icon(Icons.close, color: CustomColors.black),
              iconSize: 15.0,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class EventDetailText extends StatelessWidget {
  final String text;

  const EventDetailText({
    super.key,
    this.text = 'To be announced',
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: FontText(context).bodySmallBlack,
    );
  }
}
