import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Pages/Form/form_componants/button.dart';
import 'package:mediant_solutions_form/Pages/Form/form_componants/dropdown_button.dart';
import 'package:mediant_solutions_form/Pages/Form/form_componants/insert.dart';

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

    return SingleChildScrollView(
      child: Center(
        child: Container(
          width: widthDevice * 0.6,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text('Event: Event name here\n',
                      style: TextStyle(fontSize: 14)),
                ),
                LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Wrap(
                      spacing: 12.0,
                      runSpacing: 12.0,
                      children: [
                        for (int i = 0; i < 12; i++)
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 80,
                              maxWidth: constraints.maxWidth > 412
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
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, left: 12.0),
                  child: Row(
                    children: [
                      const Text('Number of attendants'),
                      const SizedBox(
                          width: 20.0), // Spacing between text and dropdown
                      NumberDropdown(
                        initialValue: 1, // Default value
                        onChanged: (newValue) {
                          // Handle value change
                        },
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Wrap(
                    spacing: 4.0, // Adjust spacing between words
                    runSpacing: 4.0, // Adjust spacing between lines
                    children: [
                      Text(
                          'Want us to remember your details for future event registration? :'),
                      Text(
                        'Create an account', //insert link
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
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
                                  // Proceed to next page
                                }
                              },
                              label: 'Continue',
                            ),
                            CustomButton(
                              onPressed: () {
                                // Browse other events link
                              },
                              label: 'Browse other Events',
                              backgroundColor:
                                  const Color.fromARGB(255, 107, 99, 255),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
      'City Name',
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
