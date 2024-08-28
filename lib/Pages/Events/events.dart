import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Pages/Events/events_componants/calendar_container.dart';
import 'package:mediant_solutions_form/CommonComponants/footer.dart';
import 'package:mediant_solutions_form/Pages/Events/events_componants/event_containers.dart';

import 'package:mediant_solutions_form/CommonComponants/navbar.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    // var heightDevice = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const Navbar(),
            const CalendarContainer(),
            Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    EventContainers(
                      imageUrl: 'images/event_one.png',
                      eventName: 'Event One',
                      eventDescription: 'This is a description of the event.',
                      buttonText: 'Read More',
                      onButtonPressed: () {
                        // Handle button press
                      },
                    ),
                    EventContainers(
                      imageUrl: 'images/event_two.png',
                      eventName: 'Event Two',
                      eventDescription: 'This is a description of the event.',
                      buttonText: 'Read More',
                      onButtonPressed: () {
                        // Handle button press
                      },
                    ),
                    EventContainers(
                      imageUrl: 'images/event_three.png',
                      eventName: 'Event Three',
                      eventDescription: 'This is a description of the event.',
                      buttonText: 'Read More',
                      onButtonPressed: () {
                        // Handle button press
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const footer(),
            // Add more widgets here
          ],
        ),
      ),
    );
  }
}
