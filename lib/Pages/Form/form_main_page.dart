import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/CommonComponants/calendar_container.dart';
import 'package:mediant_solutions_form/CommonComponants/Footer.dart';
import 'package:mediant_solutions_form/CommonComponants/navbar.dart';

import 'package:mediant_solutions_form/Pages/Form/form_componants/form.dart';

class FormMainPage extends StatelessWidget {
  const FormMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Navbar(),
          const CalendarContainer(
            title: 'EVENT REGISTRATION FORM:',
            description:
                'We\'re excited to have you join us at our upcoming event! To ensure we can provide you with the best experience, please take a moment to fill in your details on the registration form. Your information will help us tailor the event to your needs and keep you informed of any important updates. We look forward to seeing you there!',
            imagePath: 'images/calendar_2.png',
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FormPage(),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
