import 'package:get/get.dart';
import 'package:ticket_booking_app/model/weight_model.dart';

/// CONTROLLER TO MANAGE BOOKING DETAILS, INCLUDING WEIGHT SELECTION AND OPTIONS.
class BookingDetailController extends GetxController {
  /// REACTIVE VARIABLE TO HOLD THE INDEX OF THE CURRENTLY SELECTED WEIGHT.
  var currentWeightIndex = 0.obs;

  /// LIST OF AVAILABLE WEIGHT OPTIONS WITH THEIR RESPECTIVE DETAILS.
  List<WeightModel> weightList = [
    WeightModel(amount: "FREE", weight: "0 KG"),
    WeightModel(amount: "RP 210.000", weight: "5 KG"),
    WeightModel(amount: "RP 510.000", weight: "10 KG"),
  ];
}
