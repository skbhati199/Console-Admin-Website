part of list_stations_view;

class _ListStationsTablet extends StatelessWidget {
  final ListStationsViewModel viewModel;

  _ListStationsTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ListStationsTablet'),
      ),
    );
  }
}
