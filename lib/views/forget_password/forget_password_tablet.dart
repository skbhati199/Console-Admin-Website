part of forget_password_view;

class _ForgetPasswordTablet extends StatelessWidget {
  final ForgetPasswordViewModel viewModel;

  _ForgetPasswordTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ForgetPasswordTablet'),
      ),
    );
  }
}
