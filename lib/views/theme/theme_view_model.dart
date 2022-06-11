import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class ThemeViewModel extends BaseViewModel {
  Logger log;

  ThemeViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
