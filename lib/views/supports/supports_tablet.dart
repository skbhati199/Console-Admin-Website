part of supports_view;

class _SupportsTablet extends StatelessWidget {
  final SupportsViewModel viewModel;

  _SupportsTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SupportsTablet'),
      ),
    );
  }
}
