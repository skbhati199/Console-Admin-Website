part of supports_view;

class _SupportsMobile extends StatelessWidget {
  final SupportsViewModel viewModel;

  _SupportsMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SupportsMobile'),
      ),
    );
  }
}
