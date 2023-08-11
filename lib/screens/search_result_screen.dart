import 'package:capsule_patient/constants/colors.dart';
import 'package:flutter/material.dart';

import '../utils/screen_size.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: scaffoldBackground,
        padding: const EdgeInsets.all(10),
        width: ScreenSize.width,
        height: ScreenSize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: ScreenSize.width * 0.95,
              height: ScreenSize.height / 2.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kblack,
                  image: const DecorationImage(
                      image: AssetImage("assets/images/paracetamol-tablet.png"),
                      fit: BoxFit.cover)),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: ScreenSize.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: kWhite,
              ),
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Icon(
                              Icons.bookmark_outline,
                              size: 20,
                            ),
                            Text("save")
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
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
