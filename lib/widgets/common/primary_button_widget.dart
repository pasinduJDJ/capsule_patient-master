import 'package:capsule_patient/utils/screen_size.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final bool isOutlined;
  final Widget? icon;
  final Function()? ontap;
  const PrimaryButtonWidget({
    super.key,
    this.width = 0,
    this.height = 0,
    required this.text,
    this.ontap,
    this.isOutlined = false,
    this.icon,
  });

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
        width: width != 0 ? width : ScreenSize.width * 0.2,
        height: height != 0 ? height : ScreenSize.width * 0.1,
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          highlightColor: Colors.blue.withOpacity(0.2),
          onPressed: ontap,
          child: Row(
            children: [
              if (icon != null) icon!,
              Flexible(
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: isOutlined ? Colors.black : kWhite,
                      fontSize: ScreenSize.getResponsiveFontSize(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
