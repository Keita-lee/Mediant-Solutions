import 'package:flutter/material.dart';
// import 'package:mediant_solutions_form/Pages/CreateYourAccount/create_your_account.dart';

import 'package:mediant_solutions_form/Pages/Events/events.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Events(),
        // body: const CreateYourAccount(),
      ),
    );
  }
}
