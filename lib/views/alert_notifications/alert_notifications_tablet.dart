part of alert_notifications_view;

class _AlertNotificationsTablet extends StatelessWidget {
  final AlertNotificationsViewModel viewModel;

  _AlertNotificationsTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AlertNotificationsTablet'),
      ),
    );
  }
}
