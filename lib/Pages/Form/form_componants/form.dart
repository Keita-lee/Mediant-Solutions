import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/CommonComponants/Buttons/browse_other_events.dart';
import 'package:mediant_solutions_form/CommonComponants/Buttons/green_button.dart';
import 'package:mediant_solutions_form/Pages/CreateYourAccount/create_your_account.dart';
import 'package:mediant_solutions_form/Pages/CreateYourAccount/login.dart';
import 'package:mediant_solutions_form/Pages/Form/form_componants/dropdown_button.dart';
import 'package:mediant_solutions_form/Pages/Form/form_componants/form_container.dart';
import 'package:mediant_solutions_form/Pages/Payments/payments.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';
import 'dart:math';

class FormPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController officeNumberController = TextEditingController();
  final TextEditingController premisesNameController = TextEditingController();
  final TextEditingController streetNameController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController cityNameController = TextEditingController();
  final TextEditingController provinceNameController = TextEditingController();
  final TextEditingController companyVatNoController = TextEditingController();

  FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    Future openCreateYourAccountDialog() => showDialog(
        context: context,
        builder: (context) {
          return const Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.all(0),
            child: CreateYourAccount(),
          );
        });

    Future openLoginDialog() => showDialog(
        context: context,
        builder: (context) {
          return const Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.all(0),
            child: Login(),
          );
        });
    Future openPaymentsDialog() => showDialog(
        context: context,
        builder: (context) {
          return const Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.all(0),
            child: Payments(),
          );
        });

    return Material(
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            width: max(widthDevice * 0.5, 300),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('Event: Event name here\n',
                        style: FontText(context).bodyMediumBlack),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, bottom: 16.0),
                    child: Text(
                      'Person Responsible for The Invoice:',
                      style: FontText(context)
                          .bodySmallBlackBold
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  // First 4 FormContainers
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Wrap(
                          spacing: 12.0,
                          runSpacing: 8.0,
                          children: [
                            for (int i = 0; i < 4; i++)
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 70,
                                  maxWidth: constraints.maxWidth > 402
                                      ? (constraints.maxWidth - 12) / 2
                                      : constraints.maxWidth,
                                ),
                                child: FormContainer(
                                  labelText: _getFormFieldLabel(i),
                                  controller: _getFormFieldController(i),
                                  isEmail: i == 2,
                                  isPhone: i == 3,
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, top: 16.0, bottom: 16.0),
                    child: Text(
                      'Billing Address:',
                      style: FontText(context)
                          .bodySmallBlackBold
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  // Remaining FormContainers
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Wrap(
                          spacing: 12.0,
                          runSpacing: 8.0,
                          children: [
                            for (int i = 4; i < 12; i++)
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 70,
                                  maxWidth: constraints.maxWidth > 402
                                      ? (constraints.maxWidth - 12) / 2
                                      : constraints.maxWidth,
                                ),
                                child: FormContainer(
                                  labelText: _getFormFieldLabel(i),
                                  controller: _getFormFieldController(i),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Wrap(
                      spacing: 15, // Equivalent to SizedBox(width: 15)
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [NumberDropdown(initialValue: 0)],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Wrap(
                      spacing: 4.0, // Adjust spacing between words
                      runSpacing: 4.0, // Adjust spacing between lines
                      children: [
                        Text('Already have an account? :',
                            style: FontText(context).bodySmallBlack),
                        GestureDetector(
                          onTap: () {
                            openLoginDialog();
                          },
                          child: Text(
                            'Login',
                            style: FontText(context).bodySmallUnderline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Wrap(
                      spacing: 4.0, // Adjust spacing between words
                      runSpacing: 4.0, // Adjust spacing between lines
                      children: [
                        Text(
                            'Want us to remember your details for future event registration? :',
                            style: FontText(context).bodySmallBlack),
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
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            spacing:
                                10.0, // Add some horizontal spacing between buttons
                            runSpacing:
                                10.0, // Add some vertical spacing between rows
                            children: [
                              CustomButton(
                                onPressed: () {
                                  if (_validateForm(context)) {
                                    openPaymentsDialog();
                                  }
                                },
                                label: 'Continue',
                              ),
                              const PurpleButton(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _validateForm(BuildContext context) {
    String errorMessage = '';
    if (nameController.text.isEmpty) {
      errorMessage += 'First Name is required.\n';
    }
    if (lastNameController.text.isEmpty) {
      errorMessage += 'Last Name is required.\n';
    }
    if (emailController.text.isEmpty) {
      errorMessage += 'Email is required.\n';
    } else if (!_isValidEmail(emailController.text)) {
      errorMessage += 'Please enter a valid email address.\n';
    }
    // Add more validation checks for other fields

    if (errorMessage.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
      return false;
    }
    return true;
  }

  bool _isValidEmail(String email) {
    // Simple regex for email validation
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  // Add these new methods at the end of the HomePage class
  String _getFormFieldLabel(int index) {
    final labels = [
      'First Name',
      'Last Name',
      'E-mail',
      'Contact Number',
      'Company Name',
      'Office Number',
      'Premises Name',
      'Street Name',
      'Postal Code',
      'City',
      'Province Name',
      'Company VAT No'
    ];
    return labels[index];
  }

  TextEditingController _getFormFieldController(int index) {
    final controllers = [
      nameController,
      lastNameController,
      emailController,
      contactNumberController,
      companyNameController,
      officeNumberController,
      premisesNameController,
      streetNameController,
      postalCodeController,
      cityNameController,
      provinceNameController,
      companyVatNoController
    ];
    return controllers[index];
  }
}
