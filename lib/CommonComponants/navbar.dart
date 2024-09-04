import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/CommonComponants/email_us.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          width: widthDevice,
          height: heightDevice * 0.42,
          child: Image.asset(
            'images/EventsBackground.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: widthDevice,
          height: heightDevice * 0.42,
          color: Colors.black.withOpacity(0.5),
        ),
        Positioned(
          top: 20,
          left: 20,
          right: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/logo.png',
                    width: widthDevice * 0.15,
                    height: heightDevice * 0.15,
                    fit: BoxFit.contain,
                  ),
                  if (widthDevice >= 600)
                    const Row(
                      children: [
                        NavbarLink(text: 'Home'),
                        NavbarLink(text: 'Payroll'),
                        NavbarLink(text: 'Consulting and Training'),
                        NavbarLink(text: "FAQ's"),
                        NavbarLink(text: 'Contact'),
                      ],
                    )
                  else
                    const NavbarDropdown(),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: widthDevice * 0.3),
                child: Text(
                  'Events',
                  style: FontText(context).headingLargeWhite,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: widthDevice * 0.1, // 10% of screen width
          child: const EmailUsContainer(),
        ),
      ],
    );
  }
}

class NavbarDropdown extends StatelessWidget {
  const NavbarDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.menu, color: Colors.white),
      onSelected: (String result) {
        // Handle navigation based on selection
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Home',
          child: Text('Home'),
        ),
        const PopupMenuItem<String>(
          value: 'Payroll',
          child: Text('Payroll'),
        ),
        const PopupMenuItem<String>(
          value: 'Consulting and Training',
          child: Text('Consulting and Training'),
        ),
        const PopupMenuItem<String>(
          value: "FAQ's",
          child: Text("FAQ's"),
        ),
        const PopupMenuItem<String>(
          value: 'Contact',
          child: Text('Contact'),
        ),
      ],
    );
  }
}

class NavbarLink extends StatelessWidget {
  final String text;

  const NavbarLink({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        text,
        style: FontText(context).bodyMediumBlack.copyWith(color: Colors.white),
      ),
    );
  }
}
