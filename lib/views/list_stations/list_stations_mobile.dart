part of list_stations_view;

class _ListStationsMobile extends StatelessWidget {
  final ListStationsViewModel viewModel;

  _ListStationsMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ListStationsMobile'),
      ),
    );
  }
}
