part of alert_notifications_view;

class _AlertNotificationsMobile extends StatelessWidget {
  final AlertNotificationsViewModel viewModel;

  _AlertNotificationsMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AlertNotificationsMobile'),
      ),
    );
  }
}
