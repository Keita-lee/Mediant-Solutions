import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Pages/Form/form_componants/form.dart';
// import 'package:mediant_solutions_form/Pages/CreateYourAccount/login.dart';
// import 'package:mediant_solutions_form/Pages/Events/event_full_popup.dart';
// import 'package:mediant_solutions_form/Pages/CreateYourAccount/account_created_successfully.dart';
// import 'package:mediant_solutions_form/Pages/CreateYourAccount/create_your_account.dart';
// import 'package:mediant_solutions_form/Pages/Payments/payments.dart';
// import 'package:mediant_solutions_form/Pages/Events/events.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: Events(),
        // body: const CreateYourAccount(),
        // body: const Payments(),
        // body: const AccountCreatedSuccessfully(),
        // body: const EventFull(),
        // body: Login(),
        body: FormPage(),
      ),
    );
  }
}
