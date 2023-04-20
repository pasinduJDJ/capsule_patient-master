import 'package:flutter/cupertino.dart';

class LabelWithIcon extends StatelessWidget {
  const LabelWithIcon({
    super.key,
    required this.icon,
    required this.label,
  });
  final Icon icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 17),
          ),
          const Spacer(),
          icon
        ],
      ),
    );
  }
}
