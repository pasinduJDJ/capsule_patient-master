import 'package:capsule_patient/widgets/common/primary_button_widget.dart';
import 'package:capsule_patient/widgets/common/text_field_widget.dart';
import 'package:flutter/material.dart';

import '../utils/screen_size.dart';

class PopupUploadPrescription extends StatelessWidget {
  const PopupUploadPrescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Prescription Submittion"),
      content: SingleChildScrollView(
        child: Container(
          width: ScreenSize.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(60))),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormFieldWidget(
                label: "Prescription",
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: const [
              //     TextFormFieldWidget(
              //       label: "Prescription",
              //     ),
              //     PrimaryButtonWidget(
              //       text: "Search",
              //       height: 50,
              //       width: 120,
              //     )
              //   ],
              // ),
              TextFormFieldWidget(
                label: "Radius Km",
              ),
              TextFormFieldWidget(
                label: "Time",
              ),
              TextFormFieldWidget(
                label: "Description",
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
      actions: const [
        PrimaryButtonWidget(
          text: "Search",
          height: 50,
          width: 120,
        )
      ],
    );
  }
}
