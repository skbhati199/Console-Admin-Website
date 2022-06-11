import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class UpdatesViewModel extends BaseViewModel {
  Logger log;

  UpdatesViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
