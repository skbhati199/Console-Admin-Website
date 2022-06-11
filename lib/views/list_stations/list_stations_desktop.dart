part of list_stations_view;

class _ListStationsDesktop extends StatelessWidget {
  final ListStationsViewModel viewModel;
  
  _ListStationsDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ListStationsDesktop'),
      ),
    );
  }
}
