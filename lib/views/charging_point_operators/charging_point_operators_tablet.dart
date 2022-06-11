part of charging_point_operators_view;

class _ChargingPointOperatorsTablet extends StatelessWidget {
  final ChargingPointOperatorsViewModel viewModel;

  _ChargingPointOperatorsTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ChargingPointOperatorsTablet'),
      ),
    );
  }
}
