import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
    
import 'core/locator.dart';
import 'core/router_constants.dart';
import 'core/router.dart' as router;

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
    
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocatorInjector.setUpLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: '6LfaAmIgAAAAAKeP8fq1dBTZtXTTshxOhVvzAJi1',
  );
  runApp(MyApp());
}
    
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: router.Router.generateRoute,
      initialRoute: dashboardViewRoute,
    );
  }
}
