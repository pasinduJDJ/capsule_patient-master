import 'package:capsule_patient/constants/colors.dart';
import 'package:flutter/material.dart';

class MedicienOrEquipmentContainer extends StatelessWidget {
  const MedicienOrEquipmentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MediceneSearchCard(
              medicinename: "Paracetamol 500g",
              medcineusage: "treat pain and reduce a high temperature (fever)",
              medicinepharmacy: "CN Pharmacy",
              medicineprice: "45/card",
              medicineavilability: "In Stock",
              medicineimage:
                  Image.asset("assets/images/paracetamol-tablet.png"),
            ),
            const SizedBox(
              height: 15,
            ),
            MediceneSearchCard(
              medicinename: "Amoxciline 250g",
              medcineusage: "treat pain and reduce a high temperature (fever)",
              medicinepharmacy: "HealthCare ",
              medicineprice: "5/card",
              medicineavilability: "In Stock",
              medicineimage:
                  Image.asset("assets/images/amoxcilin-tabletpng.png"),
            )
          ],
        ),
      ),
    );
  }
}

class MediceneSearchCard extends StatelessWidget {
  const MediceneSearchCard({
    super.key,
    required this.medicinename,
    required this.medcineusage,
    required this.medicinepharmacy,
    required this.medicineprice,
    required this.medicineavilability,
    required this.medicineimage,
  });

  final String medicinename;
  final String medcineusage;
  final String medicinepharmacy;
  final String medicineprice;
  final String medicineavilability;
  final Image medicineimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      height: MediaQuery.of(context).size.height * 0.17,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: kWhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: medicineimage.image, fit: BoxFit.fill),
                  borderRadius: const BorderRadius.all(Radius.circular(20)))),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Medicine name",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),
              Text(
                medicinename,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Usage",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              Flexible(
                child: Text(
                  medcineusage,
                  style: const TextStyle(fontSize: 11),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Pharmacy",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              Text(
                medicinepharmacy,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
