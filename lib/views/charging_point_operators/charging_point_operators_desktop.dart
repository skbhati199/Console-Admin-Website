part of charging_point_operators_view;

class _ChargingPointOperatorsDesktop extends StatelessWidget {
  final ChargingPointOperatorsViewModel viewModel;
  
  _ChargingPointOperatorsDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ChargingPointOperatorsDesktop'),
      ),
    );
  }
}
