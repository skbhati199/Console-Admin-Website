library charging_point_operators_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'charging_point_operators_view_model.dart';

part 'charging_point_operators_mobile.dart';
part 'charging_point_operators_tablet.dart';
part 'charging_point_operators_desktop.dart';

class ChargingPointOperatorsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChargingPointOperatorsViewModel>.reactive(
      viewModelBuilder: () => ChargingPointOperatorsViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, ChargingPointOperatorsViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _ChargingPointOperatorsMobile(viewModel),
          desktop: _ChargingPointOperatorsDesktop(viewModel),
          tablet: _ChargingPointOperatorsTablet(viewModel),  
        );
      }
    );
  }
}
