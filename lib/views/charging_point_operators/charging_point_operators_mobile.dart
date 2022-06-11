part of charging_point_operators_view;

class _ChargingPointOperatorsMobile extends StatelessWidget {
  final ChargingPointOperatorsViewModel viewModel;

  _ChargingPointOperatorsMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ChargingPointOperatorsMobile'),
      ),
    );
  }
}
