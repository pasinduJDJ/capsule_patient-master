import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/widgets/common/primary_button_widget.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.notifipharmacyname,
    required this.notifidistance,
    required this.notifimedicinename,
    required this.notifistate,
    required this.notifipharmacylogo,
  });

  final String notifipharmacyname;
  final String notifidistance;
  final String notifimedicinename;
  final String notifistate;
  final Image notifipharmacylogo;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: const BoxDecoration(
          color: kWhite, borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: const BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                    backgroundImage: notifipharmacylogo.image,
                    radius: 100,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notifipharmacyname,
                      style: const TextStyle(fontSize: 16, color: kWhite),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "$notifidistance Ahead",
                      style: const TextStyle(color: kWhite),
                    )
                  ],
                ),
                const PrimaryButtonWidget(
                  text: "View",
                  width: 80,
                  height: 25,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notifipharmacyname,
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      notifistate,
                      style: const TextStyle(fontSize: 10),
                    )
                  ],
                ),
                const Icon(Icons.message_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}
