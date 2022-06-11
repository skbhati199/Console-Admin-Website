library settings_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'settings_view_model.dart';

part 'settings_mobile.dart';
part 'settings_tablet.dart';
part 'settings_desktop.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      viewModelBuilder: () => SettingsViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, SettingsViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _SettingsMobile(viewModel),
          desktop: _SettingsDesktop(viewModel),
          tablet: _SettingsTablet(viewModel),  
        );
      }
    );
  }
}
