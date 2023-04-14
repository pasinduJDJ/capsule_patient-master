import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/widgets/common/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchResaultScreen extends StatelessWidget {
  const SearchResaultScreen({super.key});

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
            Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.9,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: kWhite,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Paracetamol 500g",
                            style: TextStyle(fontSize: 30),
                          ),
                          Row(
                            children: [
                              Text("LKR 45/card"),
                              SizedBox(
                                width: 20,
                              ),
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
                      Spacer(),
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
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.add),
                      SizedBox(
                        width: 10,
                      ),
                      Text("2"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.add),
                      SizedBox(
                        width: 40,
                      ),
                      PrimaryButtonWidget(
                        text: "Buy",
                        height: 30,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
