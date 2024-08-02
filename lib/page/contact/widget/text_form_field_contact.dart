import 'package:flutter/material.dart';

class TextFormFieldContact extends StatefulWidget {
  const TextFormFieldContact(
    this.controller,
    this.hintText,
    this.labelText,
    this.validator, {
    this.maxLines,
    super.key,
  });

  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final int? maxLines;

  final String? Function(String?)? validator;

  @override
  State<TextFormFieldContact> createState() => _TextFormFieldContactState();
}

class _TextFormFieldContactState extends State<TextFormFieldContact> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        controller: widget.controller,
        maxLines: widget.maxLines,
        cursorColor: Colors.brown,
        style: const TextStyle(
          fontFamily: 'Roboto',
        ),
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: Colors.grey.shade700,
            fontFamily: 'Roboto',
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Roboto',
          ),
          fillColor: Colors.white,
          alignLabelWithHint: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: const BorderSide(
              color: Colors.brown,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        validator: (value) => widget.validator!(value),
      ),
    );
  }
}
