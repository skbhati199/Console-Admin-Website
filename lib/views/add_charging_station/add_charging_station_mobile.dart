part of add_charging_station_view;

class _AddChargingStationMobile extends StatelessWidget {
  final AddChargingStationViewModel viewModel;

  _AddChargingStationMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AddChargingStationMobile'),
      ),
    );
  }
}
