import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class ListStationsViewModel extends BaseViewModel {
  Logger log;

  ListStationsViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
