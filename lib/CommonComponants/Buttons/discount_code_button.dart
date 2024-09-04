import 'package:flutter/material.dart';
import 'package:mediant_solutions_form/Themes/custom_colors.dart';
import 'package:mediant_solutions_form/Themes/font_text.dart';

class DiscountCodeButton extends StatefulWidget {
  final VoidCallback onPressed;

  const DiscountCodeButton({super.key, required this.onPressed});

  @override
  State<DiscountCodeButton> createState() => _DiscountCodeButtonState();
}

class _DiscountCodeButtonState extends State<DiscountCodeButton> {
  bool _isDiscountCodeVisible = false;
  String _enteredCode = '';
  bool _isCodeCorrect = false;

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              _isDiscountCodeVisible = !_isDiscountCodeVisible;
            });
            widget.onPressed();
          },
          style: TextButton.styleFrom(
            backgroundColor: CustomColors.purple,
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
            minimumSize: const Size(80, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'Discount Code',
            textAlign: TextAlign.center,
            style: FontText(context).bodySmallWhite.copyWith(fontSize: 12),
          ),
        ),
        const SizedBox(height: 8),
        Visibility(
          visible: _isDiscountCodeVisible,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                SizedBox(
                  width: widthDevice * 0.1,
                  height: heightDevice * 0.05,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter code',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FontText(context).bodySmallBlack,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      setState(() {
                        _enteredCode = value;
                        _isCodeCorrect = _enteredCode == 'Events2024';
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8),
                if (_enteredCode.isNotEmpty)
                  Icon(
                    _isCodeCorrect ? Icons.check_circle : Icons.cancel,
                    color: _isCodeCorrect ? Colors.green : Colors.red,
                    size: 24,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
