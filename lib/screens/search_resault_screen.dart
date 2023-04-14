import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/widgets/common/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
                          children: [
                            //////////medicine name
                            Text(
                              "Paracetamol 500g",
                              style: TextStyle(fontSize: 30),
                            ),
                            ///////////medicine prices
                            Row(
                              children: [
                                Text("LKR 45/card"),
                                SizedBox(
                                  width: 20,
                                ),
                                ///////////////////////medicine Stocks
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Text(
                                    "In stock",
                                    style: const TextStyle(fontSize: 15.0),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            Icon(
                              Icons.bookmark_outline,
                              size: 30,
                            ),
                            Text("save")
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.add),
                        SizedBox(
                          width: 10,
                        ),
                        ///////////////////// medicine quantity
                        Text("2"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.add),
                        Spacer(),
                        /////////////////////// medicine buy button
                        PrimaryButtonWidget(
                          text: "Buy",
                          height: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //////////////////////////////////////////// pharmacy details(name,location,logo)
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: KsecondaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            width: 40,
                            height: 40,
                            child: CircleAvatar(
                              backgroundImage:
                                  ////////////////////////////pharmacy logo
                                  AssetImage("assets/images/phr1.png"),
                              radius: 100,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                /////////////////////pharmacy name
                                "CN Pharmacy",
                                style: const TextStyle(
                                    fontSize: 16, color: kWhite),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              ////////////////////pharmacy location
                              Text(
                                "2KmAhead",
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
                    //////////////////////////////// medicine main Details
                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      "Description",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    /////////////////////////////////////////////////medicine Description
                    Text(
                        "Paracetamol, also known as acetaminophen or para-hydroxyacetanilide, is a medication used to treat fever and mild to moderate pain. Common brand names include Tylenol and Panadol."),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Side Effects",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    /////////////////////////////////////////////////medicine Side effect
                    Text(
                        "an allergic reaction, which can cause a rash and swelling"),
                    Text(
                        "liver and kidney damage, if you take too much (overdose) – this can be fatal in severe cases"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "How to take",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    /////////////////////////////////////////////////medicine How to Take
                    Text(
                        "Adults can usually take 1 or 2 tablets (500mg) every 4-6 hours"),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
