import 'package:capsule_patient/utils/screen_size.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final Function()? ontap;
  const PrimaryButtonWidget(
      {super.key, this.width, this.height, required this.text, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: KprimaryColor,
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: width,
        height: height,
        child: MaterialButton(
          height: ScreenSize.height * 0.07,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: ontap,
          child: Text(
            text,
            style: const TextStyle(color: kWhite),
          ),
        ),
      ),
    );
  }
}
