import 'package:flutter/material.dart';

class checkBoxWithLabels extends StatelessWidget {
  const checkBoxWithLabels({
    super.key,
    required this.isChecked,
    required this.label1,
    required this.label2,
  });

  final bool isChecked;
  final String label1;
  final String label2;

  @override
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.black;
  }

  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,
        onChanged: (bool? value) {},
      ),
      Text(
        '$label1',
        style: TextStyle(fontSize: 13),
      ),
      const Spacer(),
      Text(
        '$label2',
        style: TextStyle(fontSize: 13, color: Colors.blue),
      ),
    ]);
  }
}
