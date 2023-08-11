import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/utils/screen_size.dart';
import 'package:flutter/material.dart';
import '../models/medicine.dart';
import '../models/pharmacy.dart';
import '../utils/utils.dart';
import '../widgets/medicine_search_card.dart';

class SearchScreens extends StatelessWidget {
  const SearchScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: scaffoldBackground,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TextField(
              autofocus: true,
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                hintText: 'Enter Medicine / Equipment name',
              ),
            ),
            Utils.seperatorWidget(),
            Row(
              children: List.generate(
                3,
                (index) => Container(
                  padding: EdgeInsets.only(right: ScreenSize.width * 0.03),
                  child: Chip(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor:
                        Theme.of(context).primaryColor.withOpacity(0.25),
                    label: const Text('Paracetamol'),
                  ),
                ),
              ),
            ),
            Utils.seperatorWidget(),
            ...List.generate(
              3,
              (index) => MedicineSearchCard(
                medicine: Medicine(
                  medicineImage: "assets/images/paracetamol-tablet.png",
                  name: "Paracetamol 500g",
                  usage: "treat pain and reduce a high temperature (fever)",
                  pharmacy: Pharmacy(
                    pharmacyName: "HealthCare ",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
