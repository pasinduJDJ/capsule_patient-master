import 'package:capsule_patient/screens/search_map_screen.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../models/medicine.dart';
import '../utils/screen_size.dart';
import '../utils/utils.dart';

class MedicineSearchCard extends StatelessWidget {
  const MedicineSearchCard({
    super.key,
    required this.medicine,
    this.withPharmacy = false,
  });

  final Medicine medicine;
  final bool withPharmacy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const SearchMapScreen(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: ScreenSize.height * 0.01),
        height: ScreenSize.height * (withPharmacy ? 0.17 : 0.14),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: kWhite,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Container(
                width: ScreenSize.width * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(medicine.medicineImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Utils.seperatorHWidget(),
            Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Medicine name",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    medicine.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Utils.seperatorWidget(),
                  const Text(
                    "Usage",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                  Flexible(
                    child: Text(
                      medicine.usage,
                      style: const TextStyle(fontSize: 11),
                    ),
                  ),
                  Utils.seperatorWidget(),
                  if (withPharmacy)
                    Column(
                      children: [
                        const Text(
                          "Pharmacy",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          medicine.pharmacy?.pharmacyName ?? '',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
