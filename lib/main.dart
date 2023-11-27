import 'package:amazon_prime_clone/screens/splash_screen/splash_screen.dart';
import 'package:amazon_prime_clone/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const SplashScreen(),
    );
  }
}