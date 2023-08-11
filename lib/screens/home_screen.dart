import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/utils/utils.dart';
import 'package:flutter/material.dart';

import '../models/medicine.dart';
import '../models/pharmacy.dart';
import '../utils/screen_size.dart';
import '../widgets/header_home_container.dart';
import '../widgets/medicine_search_card.dart';
import '../widgets/pharmacy_confoirm_msg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: scaffoldBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const HeaderContainer(),
            labelWithIcon("Pharmacy Near You", Icons.more_horiz_rounded),
            const PharmacyReplyContainer(),
            labelWithIcon("Top Searches", Icons.access_time),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: null,
                  child: Text(
                    "Medicines",
                    style: TextStyle(color: kblack),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    "Equipments",
                    style: TextStyle(color: kblack),
                  ),
                )
              ],
            ),
            Utils.seperatorWidget(),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: List.generate(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget labelWithIcon(String label, IconData icon) {
  return Container(
    width: ScreenSize.width,
    padding: const EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        Icon(icon)
      ],
    ),
  );
}

class PharmacyReplyContainer extends StatelessWidget {
  const PharmacyReplyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      height: ScreenSize.height / 5,
      child: ListView(
        padding: EdgeInsets.only(left: ScreenSize.width * 0.03),
        scrollDirection: Axis.horizontal,
        children: [
          PharmacyConfoirmMsgCard(
            pharmacyname: "CN Pharmacy",
            pharmacylocation: "Ward PI,Colombo",
            pharmcydistance: "2KM",
            pharmacyopenhours: "11.00 Am - 4.00 PM",
            pharmacyratingavg: 4.5,
            pharmacyrating: 45,
            pharmacyimage: Image.asset("assets/images/phr1.png"),
          ),
          const SizedBox(
            width: 15,
          ),
          PharmacyConfoirmMsgCard(
            pharmacyname: "Agura Pharmacy",
            pharmacylocation: "Up Street Dehiwela",
            pharmcydistance: "1.5KM",
            pharmacyopenhours: "8.00 Am - 5.00 PM",
            pharmacyratingavg: 4.0,
            pharmacyrating: 20,
            pharmacyimage: Image.asset("assets/images/phr2.png"),
          ),
        ],
      ),
    );
  }
}
