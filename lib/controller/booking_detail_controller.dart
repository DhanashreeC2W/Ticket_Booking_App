import 'package:ticket_booking_app/model/weight_model.dart';
import 'package:get/get.dart';

class BookingDetailController extends GetxController {
  var currentWeightIndex = 1.obs;
  List<WeightModel> weightList = [
    WeightModel(amount: "Free", weight: "0Kg"),
    WeightModel(amount: "Rp 210.000", weight: "5 Kg"),
    WeightModel(amount: "Rp 510.000", weight: "10 Kg")
  ];
}
