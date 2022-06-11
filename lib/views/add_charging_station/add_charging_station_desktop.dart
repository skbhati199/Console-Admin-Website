part of add_charging_station_view;

class _AddChargingStationDesktop extends StatelessWidget {
  final AddChargingStationViewModel viewModel;
  
  _AddChargingStationDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AddChargingStationDesktop'),
      ),
    );
  }
}
