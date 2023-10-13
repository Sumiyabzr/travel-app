import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/global_keys.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import 'package:visitulaanbaatar/screens/Details/Accommodation.dart';
import 'package:visitulaanbaatar/screens/Events/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/home_screen.dart';
import 'package:visitulaanbaatar/screens/Commercial/home_screen.dart';
import 'package:visitulaanbaatar/screens/Tours/home_screen.dart';
import 'package:visitulaanbaatar/screens/home_screen.dart';
import 'package:visitulaanbaatar/screens/onBoarding.dart';
import 'package:visitulaanbaatar/splash.dart';
import 'screens/Travel_Destinations/travel_screen.dart';

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
        initialRoute: "/",
        routes: {
          '/splash': (context) => const Splash(),
          '/boarding': (context) => const Boarding(),
          '/': (context) => const HomeScreen(),
          '/travel': (context) => const TravelScreen(),
          // '/detailDes': (context) => const DesDetail(),
          '/detailAcc': (context) => const AccDetail(),
          // '/detailEvent': (context) => const EventDetail(),
          '/events': (context) => const Events_screen(),
          '/commercial': (context) => const Commercial_screen(),
          '/tours': (context) => const Tours_screen(),
          '/info': (context) => const Info(),
        },
      ),
    );
  }
}
