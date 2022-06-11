library updates_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'updates_view_model.dart';

part 'updates_mobile.dart';
part 'updates_tablet.dart';
part 'updates_desktop.dart';

class UpdatesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UpdatesViewModel>.reactive(
      viewModelBuilder: () => UpdatesViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, UpdatesViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _UpdatesMobile(viewModel),
          desktop: _UpdatesDesktop(viewModel),
          tablet: _UpdatesTablet(viewModel),  
        );
      }
    );
  }
}
