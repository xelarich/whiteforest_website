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
      color: Colors.red,
      width: double.maxFinite,
      padding: const EdgeInsets.all(8),
      child: Container(
        color: Colors.blue,
        child: DropdownMenu<String>(
          width : double.maxFinite,
          dropdownMenuEntries: _queries
              .map(
                (item) => DropdownMenuEntry<String>(
                  value: item,
                  label: item,
                ),
              )
              .toList(),
        ),
      ),
    );
    /*return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(8),
      child: DropdownButtonFormField<String>(
        isExpanded: true,

        hint: const Text(
          'Selectionner votre demande',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
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

          // Add more decoration..
        ),
        items: _queries
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0, 0, 0),
                    child: Text(
                      item,
                    ),
                  ),
                ))
            .toList(),
        validator: (value) {
          if (value == null) {
            return 'Please select gender.';
          }
          return null;
        },
        onChanged: (value) {
          //Do something when selected item is changed.
        },
        onSaved: (value) {
          selectedValue = value.toString();
        },
        */ /*iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.black45,
          ),
          iconSize: 24,
        ),
        menuItemStyleData: const MenuItemStyleData(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        ),
        dropdownStyleData: const DropdownStyleData(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
          ),
        ),*/ /*
      ),
    );*/
  }
}
