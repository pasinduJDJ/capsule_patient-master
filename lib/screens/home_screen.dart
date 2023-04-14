import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/widgets/common/label_with_icon.dart';
import 'package:capsule_patient/widgets/common/primary_button_widget.dart';
import 'package:capsule_patient/widgets/common/text_field_widget.dart';
import 'package:capsule_patient/widgets/header_home_container.dart';
import 'package:capsule_patient/widgets/medicene_or_eqipment_container.dart';
import 'package:capsule_patient/widgets/pharmacy_confoirm_msg.dart';
import 'package:capsule_patient/widgets/popup_upload_prescription.dart';
import 'package:flutter/material.dart';

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
            const LabelWithIcon(
              icon: Icon(Icons.more_horiz_rounded),
              label: "Pharmacy Near You",
            ),
            const pharmacyReplyContainer(),
            const LabelWithIcon(
              icon: Icon(Icons.access_time),
              label: "Top Searches",
            ),
            Container(
              child: Row(
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
            ),
            SizedBox(
              height: 10,
            ),
            MedicienOrEquipmentContainer(),
            // popupUploadPrescription()
          ],
        ),
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////// Replay Container ///////

class pharmacyReplyContainer extends StatelessWidget {
  const pharmacyReplyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 10,
          ),
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
