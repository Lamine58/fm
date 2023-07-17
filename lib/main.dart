import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fm/splash.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}


class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      title: 'Life TV',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fr', ''), 
      ],
      locale: Locale('fr', ''),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}