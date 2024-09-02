// import 'package:flutter/material.dart';

// class FormContainer extends StatefulWidget {
//   final String labelText;
//   final TextEditingController controller;
//   final bool isPassword;
//   final bool isEmail;
//   final bool isPhone;

//   const FormContainer({
//     super.key,
//     required this.labelText,
//     required this.controller,
//     this.isPassword = false,
//     this.isEmail = false,
//     this.isPhone = false,
//   });

//   @override
//   _FormContainerState createState() => _FormContainerState();
// }

// class _FormContainerState extends State<FormContainer> {
//   bool _obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             widget.labelText,
//             style: const TextStyle(fontSize: 12.0),
//           ),
//           Container(
//             height: 50,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(8.0),
//               border: Border.all(color: Colors.black),
//             ),
//             child: TextFormField(
//               controller: widget.controller,
//               keyboardType: widget.isEmail
//                   ? TextInputType.emailAddress
//                   : widget.isPhone
//                       ? TextInputType.phone
//                       : TextInputType.text,
//               obscureText: widget.isPassword ? _obscureText : false,
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                 suffixIcon: widget.isPassword
//                     ? IconButton(
//                         icon: Icon(
//                           _obscureText
//                               ? Icons.visibility_off
//                               : Icons.visibility,
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             _obscureText = !_obscureText;
//                           });
//                         },
//                       )
//                     : null,
//               ),
//               validator: widget.isEmail
//                   ? (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter an email address';
//                       }
//                       final emailRegex =
//                           RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
//                       if (!emailRegex.hasMatch(value)) {
//                         return 'Please enter a valid email address';
//                       }
//                       return null;
//                     }
//                   : null,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FormContainerGrid extends StatelessWidget {
//   final List<FormContainer> formContainers;

//   const FormContainerGrid({super.key, required this.formContainers});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return GridView.builder(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: (constraints.maxWidth / 2) /
//                 100, // Adjust 100 to change the height of the items
//             crossAxisSpacing: 8,
//             mainAxisSpacing: 8,
//           ),
//           itemCount: formContainers.length,
//           itemBuilder: (context, index) {
//             return formContainers[index];
//           },
//         );
//       },
//     );
//   }
// }
