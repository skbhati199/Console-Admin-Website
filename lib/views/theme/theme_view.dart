library theme_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'theme_view_model.dart';

part 'theme_mobile.dart';
part 'theme_tablet.dart';
part 'theme_desktop.dart';

class ThemeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ThemeViewModel>.reactive(
      viewModelBuilder: () => ThemeViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, ThemeViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _ThemeMobile(viewModel),
          desktop: _ThemeDesktop(viewModel),
          tablet: _ThemeTablet(viewModel),  
        );
      }
    );
  }
}
