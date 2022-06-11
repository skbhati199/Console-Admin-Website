import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class SettingsViewModel extends BaseViewModel {
  Logger log;

  SettingsViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
