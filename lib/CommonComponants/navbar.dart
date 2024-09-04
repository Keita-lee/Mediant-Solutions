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
                  const Row(
                    children: [
                      NavbarLink(text: 'Home'),
                      NavbarLink(text: 'Payroll'),
                      NavbarLink(text: 'Consulting and Training'),
                      NavbarLink(text: "FAQ's"),
                      NavbarLink(text: 'Contact'),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 400),
                child: Text(
                  'Events',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 140,
          child: EmailUsContainer(),
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
