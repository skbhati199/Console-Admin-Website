library forget_password_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'forget_password_view_model.dart';

part 'forget_password_mobile.dart';
part 'forget_password_tablet.dart';
part 'forget_password_desktop.dart';

class ForgetPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgetPasswordViewModel>.reactive(
      viewModelBuilder: () => ForgetPasswordViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, ForgetPasswordViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _ForgetPasswordMobile(viewModel),
          desktop: _ForgetPasswordDesktop(viewModel),
          tablet: _ForgetPasswordTablet(viewModel),  
        );
      }
    );
  }
}
