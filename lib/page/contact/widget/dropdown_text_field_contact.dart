import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropdownTextFieldContact extends StatefulWidget {
  const DropdownTextFieldContact({super.key});

  @override
  State<DropdownTextFieldContact> createState() =>
      _DropdownTextFieldContactState();
}

class _DropdownTextFieldContactState extends State<DropdownTextFieldContact> {
  final List<String> _queries = [
    'Demande de renseignements',
    'Demande de devis',
    'Autre'
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.maxFinite,
      child: DropdownButtonFormField2<String>(
        value: selectedValue,
        hint: Text(
          'Sélectionner une demande',
          style: TextStyle(color: Colors.grey.shade700),
        ),
        decoration: InputDecoration(
          // Add Horizontal padding using menuItemStyleData.padding so it matches
          // the menu padding when button's width is not specified.
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: const BorderSide(
              color: Colors.brown,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),

          // Add more decoration..
        ),
        items: _queries
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                  ),
                ))
            .toList(),
        validator: (value) {
          if (value == null) {
            return 'Veuillez sélectionner une option';
          }
          return null;
        },
        onChanged: (value) {
          //Do something when selected item is changed.
        },
        onSaved: (value) {
          selectedValue = value.toString();
        },
        menuItemStyleData: const MenuItemStyleData(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        ),
        dropdownStyleData: const DropdownStyleData(
          padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
