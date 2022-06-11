library supports_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'supports_view_model.dart';

part 'supports_mobile.dart';
part 'supports_tablet.dart';
part 'supports_desktop.dart';

class SupportsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SupportsViewModel>.reactive(
      viewModelBuilder: () => SupportsViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, SupportsViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _SupportsMobile(viewModel),
          desktop: _SupportsDesktop(viewModel),
          tablet: _SupportsTablet(viewModel),  
        );
      }
    );
  }
}
