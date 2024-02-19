import 'package:desafio_padawans_flutter/src/library/utils/colors_util.dart';
import 'package:desafio_padawans_flutter/src/library/utils/global.dart';
import 'package:desafio_padawans_flutter/src/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: ColorsUtil.roxo,
    ));

    this._customInit();

    super.initState();
  }

  _customInit() {
    frwkNavigator.setNavigatorKey(this._navigatorKey);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio Padawans Flutter',
      navigatorKey: this._navigatorKey,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
        ),
        backgroundColor: Colors.white,
        canvasColor: Colors.transparent,
      ),
      home: WelcomeScreen(),
    );
  }
}
