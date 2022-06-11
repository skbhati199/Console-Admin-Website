import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class RegisterViewModel extends BaseViewModel {
  Logger log;

  RegisterViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
