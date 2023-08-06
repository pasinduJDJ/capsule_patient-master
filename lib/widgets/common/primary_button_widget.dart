import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final bool isOutlined;
  final Function()? ontap;
  const PrimaryButtonWidget(
      {super.key,
      this.width = 0,
      this.height = 0,
      required this.text,
      this.ontap,
      this.isOutlined = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isOutlined ? Colors.white : kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: isOutlined
            ? const BorderSide(color: kPrimaryColor, width: 1)
            : BorderSide.none,
      ),
      child: SizedBox(
        width: width != 0 ? width : null,
        height: height != 0 ? height : null,
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: ontap,
          child: Text(
            text,
            style: TextStyle(
              color: isOutlined ? Colors.black : kWhite,
              fontSize:
                  height != 0 && width != 0 ? (height + width) * 0.115 : null,
            ),
          ),
        ),
      ),
    );
  }
}
