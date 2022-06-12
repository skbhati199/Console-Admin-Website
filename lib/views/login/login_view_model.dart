import 'package:logger/logger.dart';
import 'package:nearbyev/core/locator.dart';
import 'package:nearbyev/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  Logger log;

  final NavigationService _services = locator<NavigationService>();

  LoginViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }

  void onSignUpPage() {
    log.i('onLoginButtonPressed');
    _services.navigateTo(registerViewRoute);
  }

  void onLoginPage() {
    log.i('onSignUpButtonPressed');
    _services.navigateTo(loginViewRoute);
  }

  void onDashboardPage() {
    log.i('onDashboardPage');
    _services.navigateTo(dashboardViewRoute);
  }
}
