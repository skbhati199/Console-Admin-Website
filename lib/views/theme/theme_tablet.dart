part of theme_view;

class _ThemeTablet extends StatelessWidget {
  final ThemeViewModel viewModel;

  _ThemeTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ThemeTablet'),
      ),
    );
  }
}
