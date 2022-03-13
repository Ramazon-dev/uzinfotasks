import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownButtonRegion extends StatefulWidget {
  const DropDownButtonRegion({Key? key}) : super(key: key);

  @override
  _DropDownButtonRegionState createState() => _DropDownButtonRegionState();
}

class _DropDownButtonRegionState extends State<DropDownButtonRegion> {
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

  String drop() {
    return selectedValue!;
  }
}


// TextButton(
//               onPressed: () {
//                 if (formKey.currentState!.validate()) {
//                   formKey.currentState!.save();
//                 }
//               },
//               child: const Text('Submit Button'),
//             ),




// import 'package:flutter/material.dart';

// class DropdownItem extends StatefulWidget {
//   const DropdownItem({Key? key}) : super(key: key);

//   @override
//   _DropdownItemState createState() => _DropdownItemState();
// }

// class _DropdownItemState extends State<DropdownItem> {
//   String? selectedValue = null;
//   final _dropdownFormKey = GlobalKey<FormState>();
//   List<DropdownMenuItem<String>> dropdownItems = [
//     const DropdownMenuItem(child: Text('tashkent'), value: 'toshkent'),
//     const DropdownMenuItem(child: Text('andijan'), value: 'samarqand'),
//     const DropdownMenuItem(child: Text('bukhara'), value: 'jizzah'),
//     const DropdownMenuItem(child: Text('gulistan'), value: 'toshkent'),
//     const DropdownMenuItem(child: Text('jizzakh'), value: 'samarqand'),
//     const DropdownMenuItem(child: Text('qarshi'), value: 'jizzah'),
//     const DropdownMenuItem(child: Text('navoiy'), value: 'toshkent'),
//     const DropdownMenuItem(child: Text('namangan'), value: 'samarqand'),
//     const DropdownMenuItem(child: Text('nukus'), value: 'jizzah'),
//     const DropdownMenuItem(child: Text('samarkand'), value: 'toshkent'),
//     const DropdownMenuItem(child: Text('termez'), value: 'samarqand'),
//     const DropdownMenuItem(child: Text('urgench'), value: 'jizzah'),
//     const DropdownMenuItem(child: Text('fergana'), value: 'jizzah'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _dropdownFormKey,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           DropdownButtonFormField(
//             decoration: InputDecoration(
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.green.shade500, width: 2),
//                 borderRadius: BorderRadius.circular(50),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.green.shade500, width: 2),
//                 borderRadius: BorderRadius.circular(50),
//               ),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.green.shade500, width: 2),
//                 borderRadius: BorderRadius.circular(50),
//               ),
//               filled: true,
//               fillColor: Colors.green[500],
//             ),
//             validator: (String? value) => value == null ? selectedValue : null,
//             dropdownColor: Colors.green[500],
//             value: selectedValue,
//             onChanged: (String? newValue) {
//               selectedValue = newValue!;
//               setState(() {});
//               // debugPrint("aaaa $selectedValue");
//             },
//             items: dropdownItems,
//           ),
//         ],
//       ),
//     );
//   }
// }
