part of login_view;

class _LoginDesktop extends StatelessWidget {
  final LoginViewModel viewModel;

  _LoginDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: EdgeInsets.only(
            top: 4.0.h, bottom: 6.0.h, left: 4.0.w, right: 4.0.w),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 3.3,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.lightBlue[600],
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 85.0, right: 50.0, left: 50.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 120.0,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Text(
                              "Go ahead and Login",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 6.0.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: const Text(
                              "It should only take a couple of seconds to login to your account",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          MaterialButton(
                            color: Colors.lightBlue,
                            onPressed: () => viewModel.onSignUpPage(),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Create Account",
                                style: GoogleFonts.poppins(
                                    fontSize: 4.0.sp, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 80.0, bottom: 5.0, left: 25.0, right: 25.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0.sp,
                        ),
                      ),
                      const SizedBox(height: 50.0),
                      //InputField Widget from the widgets folder
                      InputField(
                          label: "Email Address",
                          content: "Enter email address"),

                      const SizedBox(height: 20.0),

                      InputField(label: "Password", content: "********"),

                      const SizedBox(height: 20.0),

                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 170.0,
                          ),
                          MaterialButton(
                            color: Colors.grey[200],
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Cancel",
                                style: GoogleFonts.poppins(
                                    fontSize: 4.0.sp, color: kColorPrimaryDark),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          MaterialButton(
                            color: Colors.lightBlue,
                            onPressed: () => viewModel.onDashboardPage(),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Login",
                                style: GoogleFonts.poppins(
                                    fontSize: 4.0.sp, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
