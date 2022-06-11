part of add_charging_station_view;

class _AddChargingStationTablet extends StatelessWidget {
  final AddChargingStationViewModel viewModel;

  _AddChargingStationTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AddChargingStationTablet'),
      ),
    );
  }
}
