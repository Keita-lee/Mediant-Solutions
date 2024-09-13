import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Pages/Form/form_componants/form_container.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class NumberDropdown extends StatefulWidget {
  final int? initialValue; // Optional initial value
  final ValueChanged<int?>? onChanged;

  NumberDropdown({
    super.key,
    this.initialValue = 0, // Ensure default initial value is 0
    this.onChanged,
  });

  @override
  State<NumberDropdown> createState() => _NumberDropdownState();
}

class _NumberDropdownState extends State<NumberDropdown> {
  int? _selectedNumber;
  List<TextEditingController> _controllers = [];
  List<TextEditingController> _nameControllers = [];
  List<TextEditingController> _emailControllers = [];

  final TextEditingController emailController =
      TextEditingController(); // Controllers for text fields
  final TextEditingController nameController =
      TextEditingController(); // Controller for first name

  @override
  void initState() {
    super.initState();
    _selectedNumber = widget.initialValue ?? 0; // Ensure initial value is 0
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // Wrap in a Column to hold dropdown and text fields
      children: [
        Row(
          children: [
            Text(
              'Number of Additional Attendees:',
              style:
                  FontText(context).bodySmallBlackBold.copyWith(fontSize: 18),
            ), // Added label
            SizedBox(width: 8), // Space between label and dropdown
            DropdownButton<int>(
              value: _selectedNumber,
              items: List.generate(11, (index) {
                // Changed to 11 to include 0
                int number = index; // Allow selection of 0
                return DropdownMenuItem<int>(
                  value: number,
                  child: Text(
                    number.toString(),
                    style: const TextStyle(fontSize: 14),
                  ),
                );
              }),
              onChanged: (int? newValue) {
                setState(() {
                  _selectedNumber = newValue;
                  _updateTextFields(
                      newValue); // Update text fields based on selection
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(newValue);
                }
              },
            ),
          ],
        ),
        if (_selectedNumber != 0)
          ..._buildTextFields(), // Show text fields only if selected number is not 0
      ],
    );
  }

  void _updateTextFields(int? newValue) {
    // Clear existing controllers only if newValue is greater than 0
    if (newValue != 0) {
      _nameControllers.forEach((controller) => controller.dispose());
      _emailControllers.forEach((controller) => controller.dispose());
      _nameControllers.clear();
      _emailControllers.clear();
    }

    // Create new controllers based on selected number
    for (int i = 0; i < (newValue ?? 0); i++) {
      _nameControllers.add(TextEditingController());
      _emailControllers.add(TextEditingController());
    }
  }

  List<Widget> _buildTextFields() {
    return List.generate(_nameControllers.length, (index) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Add the new text above the text fields
          if (index == 0) // Only show this text for the first attendee
            Text(
              'Please fill in the information of each additional attendee to continue',
              style: FontText(context).bodySmallBlack.copyWith(fontSize: 18),
            ),
          Row(
            children: [
              Expanded(
                child: FormContainer(
                    labelText: 'First Name',
                    controller: _nameControllers[index]),
              ),
              SizedBox(width: 8),
              Expanded(
                child: FormContainer(
                    labelText: 'Email', controller: _emailControllers[index]),
              ),
            ],
          ),
          // ... existing code ...
        ],
      );
    });
  }
}
