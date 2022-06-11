part of theme_view;

class _ThemeDesktop extends StatelessWidget {
  final ThemeViewModel viewModel;
  
  _ThemeDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ThemeDesktop'),
      ),
    );
  }
}
