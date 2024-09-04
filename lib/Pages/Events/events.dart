import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/CommonComponants/calendar_container.dart';
import 'package:mediant_solutions_form/CommonComponants/Footer.dart';
import 'package:mediant_solutions_form/Pages/Events/event_popup.dart';
import 'package:mediant_solutions_form/Pages/Events/event_containers.dart';
import 'package:mediant_solutions_form/CommonComponants/navbar.dart';
// Import EventPopUp

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const Navbar(),
            const CalendarContainer(
              title: ' EVENT REGISTRATION FORM:',
              description:
                  'We\'re excited to have you join us at our upcoming event! To ensure we can provide you with the best experience, please take a moment to fill in your details on the registration form. Your information will help us tailor the event to your needs and keep you informed of any important updates. We look forward to seeing you there!',
              imagePath: 'images/calendar.png',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 0,
                runSpacing: 0,
                children: [
                  EventContainers(
                    imageUrl: 'images/event_one.png',
                    eventName: 'Event One',
                    eventDescription:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
                    buttonText: 'Read More',
                    onButtonPressed: () {
                      _showEventPopUp(
                        context,
                        imageUrl: 'images/event_one.png',
                        eventName: 'Event One',
                        eventDescription:
                            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore ',
                      );
                    },
                  ),
                  EventContainers(
                    imageUrl: 'images/event_two.png',
                    eventName: 'Event Two',
                    eventDescription:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
                    buttonText: 'Read More',
                    onButtonPressed: () {
                      _showEventPopUp(
                        context,
                        imageUrl: 'images/event_two.png',
                        eventName: 'Event Two',
                        eventDescription:
                            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore ',
                      );
                    },
                  ),
                  EventContainers(
                    imageUrl: 'images/event_three.png',
                    eventName: 'Event Three',
                    eventDescription:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
                    buttonText: 'Read More',
                    onButtonPressed: () {
                      _showEventPopUp(
                        context,
                        imageUrl: 'images/event_three.png',
                        eventName: 'Event Three',
                        eventDescription:
                            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore ',
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Footer(),
          ],
        ),
      ),
    );
  }

  void _showEventPopUp(
    BuildContext context, {
    required String imageUrl,
    required String eventName,
    required String eventDescription,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: EventPopUp(
            imageUrl: imageUrl,
            eventName: eventName,
            eventDescription: eventDescription,
            buttonText: 'Close',
            onButtonPressed: () {
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
  }
}
