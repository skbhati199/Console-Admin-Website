library dashboard_view;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dashboard_view_model.dart';

part 'dashboard_mobile.dart';
part 'dashboard_tablet.dart';
part 'dashboard_desktop.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, DashboardViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _DashboardMobile(viewModel),
          desktop: _DashboardDesktop(viewModel),
          tablet: _DashboardTablet(viewModel),  
        );
      }
    );
  }
}
