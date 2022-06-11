library list_stations_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'list_stations_view_model.dart';

part 'list_stations_mobile.dart';
part 'list_stations_tablet.dart';
part 'list_stations_desktop.dart';

class ListStationsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ListStationsViewModel>.reactive(
      viewModelBuilder: () => ListStationsViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, ListStationsViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _ListStationsMobile(viewModel),
          desktop: _ListStationsDesktop(viewModel),
          tablet: _ListStationsTablet(viewModel),  
        );
      }
    );
  }
}
