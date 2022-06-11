// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:nearbyev/core/router_constants.dart';

import 'package:nearbyev/views/dashboard/dashboard_view.dart' as view0;
import 'package:nearbyev/views/charging_point_operators/charging_point_operators_view.dart' as view1;
import 'package:nearbyev/views/add_charging_station/add_charging_station_view.dart' as view2;
import 'package:nearbyev/views/list_stations/list_stations_view.dart' as view3;
import 'package:nearbyev/views/dashboard/dashboard_view.dart' as view4;
import 'package:nearbyev/views/alert_notifications/alert_notifications_view.dart' as view5;
import 'package:nearbyev/views/updates/updates_view.dart' as view6;
import 'package:nearbyev/views/supports/supports_view.dart' as view7;
import 'package:nearbyev/views/settings/settings_view.dart' as view8;
import 'package:nearbyev/views/theme/theme_view.dart' as view9;
import 'package:nearbyev/views/login/login_view.dart' as view10;
import 'package:nearbyev/views/register/register_view.dart' as view11;
import 'package:nearbyev/views/forget_password/forget_password_view.dart' as view12;
import 'package:nearbyev/views/settings/settings_view.dart' as view13;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case dashboardViewRoute:
        return MaterialPageRoute(builder: (_) => view0.DashboardView());
      case chargingPointOperatorsViewRoute:
        return MaterialPageRoute(builder: (_) => view1.ChargingPointOperatorsView());
      case addChargingStationViewRoute:
        return MaterialPageRoute(builder: (_) => view2.AddChargingStationView());
      case listStationsViewRoute:
        return MaterialPageRoute(builder: (_) => view3.ListStationsView());
      case dashboardViewRoute0:
        return MaterialPageRoute(builder: (_) => view4.DashboardView());
      case alertNotificationsViewRoute:
        return MaterialPageRoute(builder: (_) => view5.AlertNotificationsView());
      case updatesViewRoute:
        return MaterialPageRoute(builder: (_) => view6.UpdatesView());
      case supportsViewRoute:
        return MaterialPageRoute(builder: (_) => view7.SupportsView());
      case settingsViewRoute:
        return MaterialPageRoute(builder: (_) => view8.SettingsView());
      case themeViewRoute:
        return MaterialPageRoute(builder: (_) => view9.ThemeView());
      case loginViewRoute:
        return MaterialPageRoute(builder: (_) => view10.LoginView());
      case registerViewRoute:
        return MaterialPageRoute(builder: (_) => view11.RegisterView());
      case forgetPasswordViewRoute:
        return MaterialPageRoute(builder: (_) => view12.ForgetPasswordView());
      case settingsViewRoute0:
        return MaterialPageRoute(builder: (_) => view13.SettingsView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}