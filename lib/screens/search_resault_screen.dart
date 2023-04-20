import 'package:capsule_patient/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchResaultScreen extends StatelessWidget {
  const SearchResaultScreen({
    super.key,
    // required this.medicineimg,
    // required this.mediniename,
    // required this.price,
    // required this.quantity,
    // required this.pharmacyname,
    // required this.pharmacylocation,
    // required this.pharmacylogo,
    // required this.medicineDescription,
    // required this.medicineSideAffects,
    // required this.medicineHowToTake
  });

  // final Image medicineimg;
  // final String mediniename;
  // final String price;
  // final String quantity;
  // final String pharmacyname;
  // final String pharmacylocation;
  // final Image pharmacylogo;
  // final String medicineDescription;
  // final String medicineSideAffects;
  // final String medicineHowToTake;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: scaffoldBackground,
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ////////////////////////////////////////////////////////medicine Image Container
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kblack,
                  image: const DecorationImage(
                      image: AssetImage("assets/images/paracetamol-tablet.png"),
                      fit: BoxFit.cover)),
            ),
            /////////////////////////////////////////////////////// Description Container
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: kWhite,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //////////////////////// medicine details(name, price,quantity)
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            //////////medicine name
                            Text(
                              "Paracetamol 500g",
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: const [
                            Icon(
                              Icons.bookmark_outline,
                              size: 20,
                            ),
                            Text("save")
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //////////////////////////////// medicine main Details
                    const Text(
                      "Description",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    /////////////////////////////////////////////////medicine Description
                    const Text(
                        "Paracetamol, also known as acetaminophen or para-hydroxyacetanilide, is a medication used to treat fever and mild to moderate pain. Common brand names include Tylenol and Panadol."),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Side Effects",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    /////////////////////////////////////////////////medicine Side effect
                    const Text(
                        "an allergic reaction, which can cause a rash and swelling"),
                    const Text(
                        "liver and kidney damage, if you take too much (overdose) – this can be fatal in severe cases"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "How to take",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    /////////////////////////////////////////////////medicine How to Take
                    const Text(
                        "Adults can usually take 1 or 2 tablets (500mg) every 4-6 hours"),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
