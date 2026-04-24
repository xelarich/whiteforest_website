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
        cursorColor: Colors.brown.shade700,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 15,
        ),
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: Colors.brown.shade400,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.brown.shade200,
          ),
          filled: true,
          fillColor: const Color(0xFFFAF7F4),
          alignLabelWithHint: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.brown.shade600,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.red.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.brown.shade100),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.red.shade300, width: 2),
          ),
        ),
        validator: (value) => widget.validator!(value),
      ),
    );
  }
}
