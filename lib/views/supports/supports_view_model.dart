import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class SupportsViewModel extends BaseViewModel {
  Logger log;

  SupportsViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
