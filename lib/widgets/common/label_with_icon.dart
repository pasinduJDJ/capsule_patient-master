import 'package:flutter/cupertino.dart';

class labelWithIcon extends StatelessWidget {
  const labelWithIcon({
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
      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 17),
          ),
          const Spacer(),
          icon
        ],
      ),
    );
  }
}
