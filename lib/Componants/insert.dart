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
          FractionallySizedBox(
            widthFactor: 1.0, // Makes the container width match its parent
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
