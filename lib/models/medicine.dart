import 'package:capsule_patient/models/pharmacy.dart';

class Medicine {
  String name;
  String usage;
  String medicineImage;
  Pharmacy? pharmacy;
  Medicine({
    this.name = '',
    this.usage = '',
    this.pharmacy,
    this.medicineImage = '',
  });
}
