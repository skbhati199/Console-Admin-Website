part of alert_notifications_view;

class _AlertNotificationsDesktop extends StatelessWidget {
  final AlertNotificationsViewModel viewModel;
  
  _AlertNotificationsDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AlertNotificationsDesktop'),
      ),
    );
  }
}
