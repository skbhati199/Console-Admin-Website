import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class SmartCardViewModel extends StreamViewModel {
  Logger log;

  SmartCardViewModel() {
    log = getLogger(this.runtimeType.toString());
  }

  @override
  Stream get stream => throw UnimplementedError();
}
