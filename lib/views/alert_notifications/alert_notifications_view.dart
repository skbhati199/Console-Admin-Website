library alert_notifications_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'alert_notifications_view_model.dart';

part 'alert_notifications_mobile.dart';
part 'alert_notifications_tablet.dart';
part 'alert_notifications_desktop.dart';

class AlertNotificationsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AlertNotificationsViewModel>.reactive(
      viewModelBuilder: () => AlertNotificationsViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, AlertNotificationsViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _AlertNotificationsMobile(viewModel),
          desktop: _AlertNotificationsDesktop(viewModel),
          tablet: _AlertNotificationsTablet(viewModel),  
        );
      }
    );
  }
}
