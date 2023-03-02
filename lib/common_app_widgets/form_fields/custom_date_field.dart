import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomDateFeild extends StatefulWidget {
  final TextEditingController fieldController;
  final String labelText;
  const CustomDateFeild({
    super.key,
    required this.fieldController,
    required this.labelText,
  });

  @override
  State<CustomDateFeild> createState() => _CustomDateFeildState();
}

class _CustomDateFeildState extends State<CustomDateFeild> {
  var _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.fieldController,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: kPrimaryTextStyle.copyWith(
          fontWeight: FontWeight.normal,
          fontSize: 16,
        ),
        hintText: 'YYYY-MM-DD',
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        suffix: GestureDetector(
          onTap: () async {
            DateTime? date = await showDatePicker(
              context: context,
              builder: (context, child) {
                return Theme(
                  data: ThemeData().copyWith(
                    colorScheme: const ColorScheme.light().copyWith(
                      primary: kPrimaryColor,
                      onPrimary: kSecondaryColor,
                    ),
                  ),
                  child: child!,
                );
              },
              initialDate: DateTime.tryParse(widget.fieldController.text) ??
                  _selectedDate,
              firstDate:
                  DateTime.now().subtract(const Duration(days: 100 * 365)),
              lastDate: DateTime.now(),
            );
            if (date != null) {
              setState(() {
                _selectedDate = date;
                widget.fieldController.text =
                    _selectedDate.toString().split(" ")[0];
              });
            }
          },
          child: const Icon(
            Icons.calendar_month,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
