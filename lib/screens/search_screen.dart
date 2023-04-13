import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/widgets/medicene_or_eqipment_container.dart';
import 'package:flutter/material.dart';

class SearchScreens extends StatelessWidget {
  const SearchScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            TextButton(
                onPressed: null,
                child: Text(
                  "Medicines",
                  style: TextStyle(color: kblack),
                )),
            TextButton(
                onPressed: null,
                child: Text(
                  "Equipments",
                  style: TextStyle(color: kblack),
                ))
          ],
        ),
        medicienOrEquipmentContainer(),
      ],
    );
  }
}
