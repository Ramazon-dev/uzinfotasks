import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownButtonRayon extends StatefulWidget {
  const DropDownButtonRayon({Key? key}) : super(key: key);

  @override
  _DropDownButtonRayonState createState() => _DropDownButtonRayonState();
}

class _DropDownButtonRayonState extends State<DropDownButtonRayon> {
  final List<String> genderItems = [
    "tashkent",
    "andijan",
    "bukhara",
    "gulistan",
    "jizzakh",
    "qarshi",
    "navoiy",
    "namangan",
    "nukus",
    "samarkand",
    "termez",
    "urgench",
    "fergana",
  ];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      decoration: InputDecoration(
        fillColor: Colors.green[500],
        filled: true,
        hoverColor: Colors.green.shade500,
        focusColor: Colors.green.shade500,
        isDense: true,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      isExpanded: true,
      hint: Text(
        'Выберите регион',
        style: TextStyle(fontSize: 16, color: Colors.grey[300]),
      ),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 30,
      buttonHeight: 60,
      buttonPadding: const EdgeInsets.only(left: 20, right: 10),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      items: genderItems
          .map((item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item, style: const TextStyle(fontSize: 14))))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'пожалуста выберите регион';
        }
        return null;
      },
      selectedItemHighlightColor: Colors.green.shade500,
      focusColor: Colors.green.shade500,
      onChanged: (value) {},
      onSaved: (value) {
        selectedValue = value.toString();
      },
    );
  }
}
