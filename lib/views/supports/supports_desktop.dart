part of supports_view;

class _SupportsDesktop extends StatelessWidget {
  final SupportsViewModel viewModel;
  
  _SupportsDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SupportsDesktop'),
      ),
    );
  }
}
