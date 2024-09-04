import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/CommonComponants/Buttons/arrow_button.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class EventContainers extends StatelessWidget {
  const EventContainers({
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

    return Material(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Container(
              width: widthDevice * 0.23,
              height: heightDevice * 0.45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image in the top half
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Event name
                        Text(
                          eventName,
                          style: FontText(context).bodyMediumBlack,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        // Event description
                        Text(
                          eventDescription,
                          style: FontText(context).bodySmallBlack,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 5, bottom: 5),
                    child: Row(
                      children: [
                        ArrowButton(
                          buttonText: 'Read More',
                          onPressed: onButtonPressed,
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: CustomColors.green,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Exclusive Offers',
                                style: FontText(context).bodySmallWhite,
                              ),
                              const SizedBox(width: 4),
                              const Icon(Icons.check,
                                  color: Colors.white, size: 16),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
