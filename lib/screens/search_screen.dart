import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/widgets/medicine_or_eqipment_container.dart';
import 'package:flutter/material.dart';

class SearchScreens extends StatelessWidget {
  const SearchScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: scaffoldBackground,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
          MedicienOrEquipmentContainer(),
        ],
      ),
    );
  }
}
