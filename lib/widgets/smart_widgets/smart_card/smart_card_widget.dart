library smart_card_widget;

import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'smart_card_view_model.dart';

part 'smart_card_mobile.dart';
part 'smart_card_tablet.dart';
part 'smart_card_desktop.dart';

class SmartCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SmartCardViewModel>.reactive(
      builder: (BuildContext context, SmartCardViewModel viewModel, Widget _) {
        return ScreenTypeLayout(
          mobile: _SmartCardMobile(),
          desktop: _SmartCardDesktop(),
          tablet: _SmartCardTablet(),
        );
      },
      viewModelBuilder: () => SmartCardViewModel(),
    );
  }
}
