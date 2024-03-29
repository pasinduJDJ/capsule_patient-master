import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/widgets/app_bar_widget.dart';
import 'package:capsule_patient/widgets/drawer_widget.dart';
import 'package:capsule_patient/widgets/notification_card.dart';
import 'package:flutter/material.dart';

import '../utils/screen_size.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: const AppBarWidget(
        title: 'Notification',
      ),
      body: Container(
        width: ScreenSize.width,
        color: scaffoldBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: null,
                  child: Text(
                    "Scan Resaults",
                    style: TextStyle(color: kblack),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    "Systems",
                    style: TextStyle(color: kblack),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NotificationCard(
                  notifipharmacyname: "CN Pharmacy",
                  notifidistance: "2Km",
                  notifimedicinename: "Paracetamol 500g",
                  notifistate: "Hello we have your required medicine",
                  notifipharmacylogo: Image.asset("assets/images/phr1.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                NotificationCard(
                  notifipharmacyname: "CN Pharmacy",
                  notifidistance: "2Km",
                  notifimedicinename: "Paracetamol 500g",
                  notifistate: "Hello we have your required medicine",
                  notifipharmacylogo: Image.asset("assets/images/phr1.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                NotificationCard(
                  notifipharmacyname: "CN Pharmacy",
                  notifidistance: "2Km",
                  notifimedicinename: "Paracetamol 500g",
                  notifistate: "Hello we have your required medicine",
                  notifipharmacylogo: Image.asset("assets/images/phr1.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                NotificationCard(
                  notifipharmacyname: "CN Pharmacy",
                  notifidistance: "2Km",
                  notifimedicinename: "Paracetamol 500g",
                  notifistate: "Hello we have your required medicine",
                  notifipharmacylogo: Image.asset("assets/images/phr1.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
