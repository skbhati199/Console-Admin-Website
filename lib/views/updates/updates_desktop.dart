part of updates_view;

class _UpdatesDesktop extends StatelessWidget {
  final UpdatesViewModel viewModel;
  
  _UpdatesDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('UpdatesDesktop'),
      ),
    );
  }
}
