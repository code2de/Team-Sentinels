import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/explore_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'providers/review_provider.dart';

void main() {
  runApp(const TrustChainApp());
}

class TrustChainApp extends StatelessWidget {
  const TrustChainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ReviewProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TrustChain',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: '/', // 👈 Start at WelcomeScreen
        routes: {
          '/': (context) => const OnboardingPage(),
          '/login': (context) => const LoginPage(),
          '/signup': (context) => const SignUpPage(),
          '/home': (context) => HomeScreen(),
          '/explore': (context) => ExploreScreen(),
        },
      ),
    );
  }
}
