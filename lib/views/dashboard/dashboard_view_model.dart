import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:nearbyev/core/logger.dart';

class DashboardViewModel extends BaseViewModel {
  final GlobalKey<ScaffoldState> drawerscaffoldkey =
      new GlobalKey<ScaffoldState>();

  Logger log;

  DashboardViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }

  void logout() {
    log.i('logout');
  }

  void profile() {
    log.i('profile');
  }

  void onMenuPressed() {
    log.i('onMenuPressed');
  }
}
