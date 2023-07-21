import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter_application_1/pages/login_page.dart';
import 'screens/hotels_screen.dart';

import 'screens/activities_screen.dart';
import 'widgets/side_bar.dart';

import 'screens/alisveris_screen.dart';
import 'screens/restoran_screen.dart'; 
import 'screens/ulasim_screen.dart';
import 'pages/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(TravelApp());
}
// https://stackoverflow.com/questions/51659805/persisting-appbar-drawer-across-all-pages-flutter
// https://github.com/ayalma/flutter_multi_page_drawer/blob/master/lib/main.dart

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/LoginPage',
      routes: {
        ActivitiesScreen.routeName: (context) => const ActivitiesScreen(),
        HotelsScreen.routeName: (context) => const HotelsScreen(),
        AlisverisScreen.routeName: (context) => const AlisverisScreen(),
        RestoranScreen.routeName: (context) => const RestoranScreen(),
        UlasimScreen.routeName: (context) => const UlasimScreen(),
        LoginPage.routeName:(context) => const LoginPage(),
        SignUp.routeName:(context) => const SignUp(),
      },
      builder: (context, child) {
        return _TravelApp(
          navigator: (child!.key as GlobalKey<NavigatorState>),
          child: child,
        );
      },
    );
  }
}

class _TravelApp extends StatefulWidget {
  const _TravelApp({
    Key? key,
    required this.navigator,
    required this.child,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigator;
  final Widget child;

  @override
  State<_TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<_TravelApp> {
  bool isOnboarding = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5EDDC),
      body: isOnboarding
          ? _buildOnboarding(context)
          : Row(
              children: [
                SideBar(
                  width: width,
                  height: height,
                  navigator: widget.navigator,
                ),
                Expanded(child: widget.child)
              ],
            ),
    );
  }

  Container _buildOnboarding(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/arkaplan.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.45,
          bottom: MediaQuery.of(context).size.height * 0.1,
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Eskişehir'i Keşfetme Zamanı",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isOnboarding = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                elevation: 0,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_circle_right_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Haydi Başlayalım',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}