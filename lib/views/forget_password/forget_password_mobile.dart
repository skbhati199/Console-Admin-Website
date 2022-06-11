part of forget_password_view;

class _ForgetPasswordMobile extends StatelessWidget {
  final ForgetPasswordViewModel viewModel;

  _ForgetPasswordMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ForgetPasswordMobile'),
      ),
    );
  }
}
