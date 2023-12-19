import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/global_keys.dart';
import 'package:visitulaanbaatar/login/login.dart';
import 'package:visitulaanbaatar/navigation_bar.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import 'package:visitulaanbaatar/screens/Commercial/navbar.dart';
import 'package:visitulaanbaatar/screens/Events/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/home_screen.dart';
import 'package:visitulaanbaatar/screens/NewAccommodation/screen.dart';
import 'package:visitulaanbaatar/screens/Tours/home_screen.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/navbar.dart';
import 'package:visitulaanbaatar/screens/Ulaanbaatar/home.dart';
import 'package:visitulaanbaatar/screens/new_home_screen.dart';
import 'package:visitulaanbaatar/screens/onBoarding.dart';
import 'package:visitulaanbaatar/splash.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.leanBack
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CommonProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: GlobalKeys.navigatorKey,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        ),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        initialRoute: "/splash",
        routes: {
          '/NavBar': (context) => const NavBar(),
          '/splash': (context) => const Splash(),
          '/boarding': (context) => const Boarding(),
          '/login': (context) => const Login(),
          '/': (context) => const NewHomeScreen(),
          // '/': (context) => const HomeScreen(),
          '/travel': (context) => const DesNav(),
          '/events': (context) => const Events_screen(),
          '/commercial': (context) => const CommNav(),
          '/tours': (context) => const Tours_screen(),
          '/info': (context) => const Info(),
          '/ulaanbaatar': (context) => const Ubhome(),
          '/newaccommodation': (context) => const NewAccommodation(),
        },
      ),
    );
  }
}
