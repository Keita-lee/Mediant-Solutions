import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isPassword;
  final bool isEmail;
  final bool isPhone;

  const FormContainer({
    super.key,
    required this.labelText,
    required this.controller,
    this.isPassword = false,
    this.isEmail = false,
    this.isPhone = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(fontSize: 14.0),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              controller: controller,
              keyboardType: isEmail
                  ? TextInputType.emailAddress
                  : isPhone
                      ? TextInputType.phone
                      : TextInputType.text,
              obscureText: isPassword,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
              validator: isEmail
                  ? (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an email address';
                      }
                      final emailRegex =
                          RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                      if (!emailRegex.hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    }
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}

class FormContainerGrid extends StatelessWidget {
  final List<FormContainer> formContainers;

  const FormContainerGrid({super.key, required this.formContainers});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (constraints.maxWidth / 2) /
                100, // Adjust 100 to change the height of the items
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: formContainers.length,
          itemBuilder: (context, index) {
            return formContainers[index];
          },
        );
      },
    );
  }
}
