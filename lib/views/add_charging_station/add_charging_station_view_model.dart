import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class AddChargingStationViewModel extends BaseViewModel {
  Logger log;

  AddChargingStationViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
