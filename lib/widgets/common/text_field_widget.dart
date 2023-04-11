import 'package:capsule_patient/constants/colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final bool isPassword;
  final bool underLined;
  final TextEditingController? textEditingController;
  final String label;
  final int maxLines;

  const TextFormFieldWidget({
    super.key,
    this.isPassword = false,
    this.underLined = false,
    this.textEditingController,
    this.label = "",
    this.maxLines = 1,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    double borderRadius = 10;
    InputBorder? inputBorder(bool isFocused) => widget.underLined
        ? UnderlineInputBorder(
            borderSide:
                BorderSide(color: isFocused ? KprimaryColor : Colors.grey))
        : OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
            borderSide:
                BorderSide(color: isFocused ? KprimaryColor : Colors.grey),
          );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 5),
        TextFormField(
          maxLines: widget.maxLines,
          controller: widget.textEditingController,
          obscureText: widget.isPassword,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            border: inputBorder(false),
            focusedBorder: inputBorder(true),
          ),
        ),
      ],
    );
  }
}
