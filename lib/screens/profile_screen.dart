import 'package:capsule_patient/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    // required this.userfirstname,
    // required this.userlastname,
    // required this.usermobilenumber,
    // required this.userdb,
    // required this.userlocation,
    // required this.useremail,
    // required this.userpassword
  });

  // final String userfirstname;
  // final String userlastname;
  // final String usermobilenumber;
  // final String userdb;
  // final String userlocation;
  // final String useremail;
  // final String userpassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: scaffoldBackground,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height / 6.5,
              decoration: const BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/ProfilePicture_1.png"),
                      radius: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Pasindu Dulanjana ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Anuruddha ",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "First Name",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "Pasindu Dulanjana",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.edit_rounded,
                        size: 18,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Last Name",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "Anuruddha",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.edit_rounded,
                        size: 18,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Mobile number",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "+94767066455",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.edit_rounded,
                        size: 18,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Date of Birth",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "2000-10-25",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.edit_rounded,
                        size: 18,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: const [
                      Flexible(
                        child: Text(
                          "87 Galvihara Rd, Dehiwala-Mount Lavinia",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Icon(
                        Icons.edit_rounded,
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height / 7,
              decoration: const BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Primary email address",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "pasindudulanjanarj@gmail.com",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.edit_rounded,
                        size: 18,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "*******************",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.edit_rounded,
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
