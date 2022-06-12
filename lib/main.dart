import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nearbyev/views/dashboard/dashboard_view.dart';
import 'package:nearbyev/views/login/login_view.dart';
import 'package:nearbyev/views/register/register_view.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked_services/stacked_services.dart';

import 'core/locator.dart';
import 'core/router_constants.dart';
import 'core/router.dart' as router;
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

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
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: router.Router.generateRoute,
        initialRoute: registerViewRoute,
        routes: {
          registerViewRoute: (context) => RegisterView(),
          loginViewRoute: (context) => LoginView(),
          dashboardViewRoute: (context) => DashboardView(),
        },
      );
    });
  }
}
