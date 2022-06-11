import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class DashboardViewModel extends BaseViewModel {
  Logger log;

  DashboardViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
