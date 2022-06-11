part of updates_view;

class _UpdatesMobile extends StatelessWidget {
  final UpdatesViewModel viewModel;

  _UpdatesMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('UpdatesMobile'),
      ),
    );
  }
}
