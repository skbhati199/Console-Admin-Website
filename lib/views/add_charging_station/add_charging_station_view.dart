library add_charging_station_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'add_charging_station_view_model.dart';

part 'add_charging_station_mobile.dart';
part 'add_charging_station_tablet.dart';
part 'add_charging_station_desktop.dart';

class AddChargingStationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddChargingStationViewModel>.reactive(
      viewModelBuilder: () => AddChargingStationViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, AddChargingStationViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _AddChargingStationMobile(viewModel),
          desktop: _AddChargingStationDesktop(viewModel),
          tablet: _AddChargingStationTablet(viewModel),  
        );
      }
    );
  }
}
