import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/widgets/popup_upload_prescription.dart';
import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3.4,
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hi Pasindu",
            style: TextStyle(
                fontSize: 23, color: kWhite, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const TextField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: 'Enter medical name',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("OR", style: TextStyle(fontSize: 10, color: kWhite))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Material(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.06,
              child: MaterialButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => const PopupUploadPrescription());
                },
                child: const Text(
                  "Upload Prescription",
                  style: TextStyle(color: kWhite),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              Text("87 Galvihara Rd, Dehiwala-Mount Lavinia",
                  style: TextStyle(fontSize: 15, color: kWhite))
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Change",
                  style: TextStyle(
                      fontSize: 13,
                      color: kWhite,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
