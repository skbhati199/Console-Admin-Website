import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nearbyev/views/dashboard/dashboard_view.dart';
import 'package:nearbyev/views/login/login_view.dart' as loginPageView;
import 'package:nearbyev/views/register/register_view.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked_services/stacked_services.dart';

import 'core/locator.dart';
import 'core/router_constants.dart';
import 'core/router.dart' as router;
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutterfire_ui/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocatorInjector.setUpLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await FirebaseAppCheck.instance.activate(
  //   webRecaptchaSiteKey: '6LfaAmIgAAAAAKeP8fq1dBTZtXTTshxOhVvzAJi1',
  // );
  // Ideal time to initialize
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  FlutterFireUIAuth.configureProviders([
    const EmailProviderConfiguration(),
    const PhoneProviderConfiguration(),
    const GoogleProviderConfiguration(
        clientId:
            "617287756904-r5oklh5iu56n39n2j74kg7oe9j9jappo.apps.googleusercontent.com"),
    const AppleProviderConfiguration(),
    const FacebookProviderConfiguration(clientId: "701723080918360"),
    EmailLinkProviderConfiguration(
      actionCodeSettings: ActionCodeSettings(
        url: 'console.infoskillstechnology.com',
        handleCodeInApp: true,
        androidMinimumVersion: '21',
        androidPackageName: 'com.nearbyevcharging.app.nearbyev',
        iOSBundleId: 'com.nearbyevcharging.app.nearbyev',
      ),
    ),
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      final auth = FirebaseAuth.instance;
      return MaterialApp(
        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.all(24),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          ),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: router.Router.generateRoute,
        initialRoute: auth.currentUser == null ? "/" : dashboardViewRoute,
        routes: {
          '/': (context) {
            return SignInScreen(
              sideBuilder: (context, constraints) => Container(
                child: Container(
                  width: MediaQuery.of(context).size.width / 3.3,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.blue[600],
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 85.0, right: 50.0, left: 50.0),
                    child: Align(
                      alignment: Alignment.center,
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // no providerConfigs property - global configuration will be used instead
              actions: [
                AuthStateChangeAction<SignedIn>((context, state) {
                  Navigator.pushReplacementNamed(context, dashboardViewRoute);
                }),
              ],
            );
          },
          dashboardViewRoute: (context) => DashboardView(),
        },
      );
    });
  }
}
