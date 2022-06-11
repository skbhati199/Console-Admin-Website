import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class AlertNotificationsViewModel extends BaseViewModel {
  Logger log;

  AlertNotificationsViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
