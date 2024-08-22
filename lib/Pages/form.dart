import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Componants/dropdown_button.dart';
import 'package:mediant_solutions_form/Componants/insert.dart';

class HomePage extends StatelessWidget {
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

  HomePage({super.key});

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
                Row(
                  children: [
                    Expanded(
                      child: FormContainer(
                        labelText: 'First Name',
                        controller: nameController,
                      ),
                    ),
                    const SizedBox(
                        width: 12.0), // Add spacing between containers
                    Expanded(
                      child: FormContainer(
                        labelText: 'Last Name',
                        controller: lastNameController,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: FormContainer(
                        labelText: 'E-mail',
                        controller: emailController,
                        isEmail: true,
                      ),
                    ),
                    const SizedBox(
                        width: 12.0), // Add spacing between containers
                    Expanded(
                      child: FormContainer(
                        labelText: 'Contact Number',
                        controller: contactNumberController,
                        isPhone: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: FormContainer(
                        labelText: 'Company Name',
                        controller: companyNameController,
                      ),
                    ),
                    const SizedBox(
                        width: 12.0), // Add spacing between containers
                    Expanded(
                      child: FormContainer(
                        labelText: 'Office Number',
                        controller: officeNumberController,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: FormContainer(
                        labelText: 'Premises Name',
                        controller: premisesNameController,
                      ),
                    ),
                    const SizedBox(
                        width: 12.0), // Add spacing between containers
                    Expanded(
                      child: FormContainer(
                        labelText: 'Street Name',
                        controller: streetNameController,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: FormContainer(
                        labelText: 'Postal Code',
                        controller: postalCodeController,
                      ),
                    ),
                    const SizedBox(
                        width: 12.0), // Add spacing between containers
                    Expanded(
                      child: FormContainer(
                        labelText: 'City Name',
                        controller: cityNameController,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: FormContainer(
                        labelText: 'Province Name',
                        controller: provinceNameController,
                      ),
                    ),
                    const SizedBox(
                        width: 12.0), // Add spacing between containers
                    Expanded(
                      child: FormContainer(
                        labelText: 'Company VAT No',
                        controller: companyVatNoController,
                      ),
                    ),
                  ],
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
                  child: Row(
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
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: TextButton(
                        onPressed: () {
                          // Link to next page
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 116, 219, 103),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(200, 40),
                        ),
                        child: const Text('Continue'),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: TextButton(
                        onPressed: () {
                          // Browse other events link
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 107, 99, 255),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(300, 40),
                        ),
                        child: const Text('Browse other Events'),
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
}
