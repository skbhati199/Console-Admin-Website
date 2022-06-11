import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class ForgetPasswordViewModel extends BaseViewModel {
  Logger log;

  ForgetPasswordViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
