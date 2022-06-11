part of theme_view;

class _ThemeMobile extends StatelessWidget {
  final ThemeViewModel viewModel;

  _ThemeMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ThemeMobile'),
      ),
    );
  }
}
