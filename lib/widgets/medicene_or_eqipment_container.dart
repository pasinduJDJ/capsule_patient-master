import 'package:capsule_patient/constants/colors.dart';
import 'package:flutter/material.dart';

class medicienOrEquipmentContainer extends StatelessWidget {
  const medicienOrEquipmentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            mediceneSearchCard(
              medicinename: "Paracetamol 500g",
              medcineusage: "treat pain and reduce a high temperature (fever)",
              medicinepharmacy: "CN Pharmacy",
              medicineprice: "45/card",
              medicineavilability: "In Stock",
              medicineimage:
                  Image.asset("assets/images/paracetamol-tablet.png"),
            ),
            SizedBox(
              height: 15,
            ),
            mediceneSearchCard(
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

class mediceneSearchCard extends StatelessWidget {
  const mediceneSearchCard({
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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: scaffoldBackground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: medicineimage.image, fit: BoxFit.fill),
                  borderRadius: const BorderRadius.all(Radius.circular(20)))),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Medicine name",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    medicinename,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                    child: Text(
                      medicineavilability,
                      style: const TextStyle(fontSize: 15.0),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Usage",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              Text(
                medcineusage,
                style: const TextStyle(fontSize: 11),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Pharmacy",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    medicinepharmacy,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "price : LKR $medicineprice",
                    style: const TextStyle(fontSize: 12),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
