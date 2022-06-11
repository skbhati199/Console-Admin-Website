part of updates_view;

class _UpdatesTablet extends StatelessWidget {
  final UpdatesViewModel viewModel;

  _UpdatesTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('UpdatesTablet'),
      ),
    );
  }
}
