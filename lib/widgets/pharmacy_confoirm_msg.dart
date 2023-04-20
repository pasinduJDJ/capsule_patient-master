import 'package:capsule_patient/constants/colors.dart';
import 'package:flutter/material.dart';

class PharmacyConfoirmMsgCard extends StatelessWidget {
  const PharmacyConfoirmMsgCard({
    super.key,
    required this.pharmacyname,
    required this.pharmacylocation,
    required this.pharmcydistance,
    required this.pharmacyopenhours,
    required this.pharmacyratingavg,
    required this.pharmacyrating,
    required this.pharmacyimage,
  });

  final String pharmacyname;
  final String pharmacylocation;
  final String pharmcydistance;
  final String pharmacyopenhours;
  final double pharmacyratingavg;
  final int pharmacyrating;
  final Image pharmacyimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircleAvatar(
                    backgroundImage: pharmacyimage.image,
                    radius: 100,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Pharmacy Name",
                        style: TextStyle(color: kWhite, fontSize: 12)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pharmacyname,
                          style: const TextStyle(color: kWhite, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Text(
                          pharmacyratingavg.toString(),
                          style: const TextStyle(color: kWhite, fontSize: 14),
                        ),
                        Text(
                          "($pharmacyrating)",
                          style: const TextStyle(color: kWhite, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("location",
                        style: TextStyle(color: kWhite, fontSize: 12)),
                    Text(
                      pharmacylocation,
                      style: const TextStyle(color: kWhite, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text(
                    "Distance",
                    style: TextStyle(color: kWhite, fontSize: 12),
                  ),
                  Text(
                    pharmcydistance,
                    style: const TextStyle(color: kWhite, fontSize: 18),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Open Hours",
                    style: TextStyle(color: kWhite, fontSize: 12),
                  ),
                  Text(
                    pharmacyopenhours,
                    style: const TextStyle(color: kWhite, fontSize: 18),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
