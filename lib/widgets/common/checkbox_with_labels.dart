import 'package:capsule_patient/constants/colors.dart';
import 'package:flutter/material.dart';

class CheckBoxWithLabels extends StatefulWidget {
  const CheckBoxWithLabels({
    super.key,
    required this.label,
    required this.onRememberCheck,
  });

  final OnRememberCheck onRememberCheck;
  final String label;

  @override
  State<CheckBoxWithLabels> createState() => _CheckBoxWithLabelsState();
}

class _CheckBoxWithLabelsState extends State<CheckBoxWithLabels> {
  Color getColor(Set<MaterialState> states) {
    return kPrimaryColor;
  }

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,
        onChanged: (bool? value) {
          if (value != null) {
            isChecked = value;
            widget.onRememberCheck(isChecked);
            setState(() {});
          }
        },
      ),
      Text(
        widget.label,
        style: const TextStyle(fontSize: 15),
      ),
    ]);
  }
}

typedef OnRememberCheck = void Function(bool isChecked);
