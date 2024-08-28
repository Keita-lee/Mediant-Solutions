import 'package:flutter/material.dart';

class NumberDropdown extends StatefulWidget {
  final int? initialValue; // Optional initial value
  final ValueChanged<int?>? onChanged; // Callback for when the value changes

  const NumberDropdown({
    super.key,
    this.initialValue,
    this.onChanged,
  });

  @override
  _NumberDropdownState createState() => _NumberDropdownState();
}

class _NumberDropdownState extends State<NumberDropdown> {
  int? _selectedNumber;

  @override
  void initState() {
    super.initState();
    _selectedNumber = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: _selectedNumber,
      items: List.generate(10, (index) {
        int number = index + 1;
        return DropdownMenuItem<int>(
          value: number,
          child: Text(number.toString()),
        );
      }),
      onChanged: (int? newValue) {
        setState(() {
          _selectedNumber = newValue;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(newValue);
        }
      },
    );
  }
}
