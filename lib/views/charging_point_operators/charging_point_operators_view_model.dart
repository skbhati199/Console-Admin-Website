import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class ChargingPointOperatorsViewModel extends StreamViewModel {
  Logger log;

  ChargingPointOperatorsViewModel() {
    log = getLogger(this.runtimeType.toString());
  }

  @override
  // TODO: implement stream
  Stream get stream => throw UnimplementedError();
}
