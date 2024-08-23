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
    return LayoutBuilder(
      builder: (context, constraints) {
        // Set the width of the container
        double containerWidth = constraints.maxWidth > 200
            ? 390
            : constraints.maxWidth > 200
                ? constraints.maxWidth
                : 200;

        return SizedBox(
          width: containerWidth,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  labelText,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextField(
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
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
