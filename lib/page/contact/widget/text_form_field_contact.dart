import 'package:flutter/material.dart';

class TextFormFieldContact extends StatefulWidget {
  const TextFormFieldContact(this.hintText, this.labelText, this.validator,
      {this.maxLines, super.key});

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
        maxLines: widget.maxLines,
        cursorColor: Colors.brown,

        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: const TextStyle(color: Colors.black),
          hintText: widget.hintText,
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
        ),
        validator: (value) => widget.validator!(value),
      ),
    );
  }
}
