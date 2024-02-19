import 'package:desafio_padawans_flutter/src/library/utils/colors_util.dart';
import 'package:desafio_padawans_flutter/src/library/utils/global.dart';
import 'package:desafio_padawans_flutter/src/screens/home/home/home_screen.dart';
import 'package:desafio_padawans_flutter/src/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.background,
      appBar: null,
      body: this._buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 36,
        vertical: 48,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
            width: 250,
            height: 250,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'every.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorsUtil.roxo,
              fontSize: 62,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Your everyday personal assistant..',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorsUtil.cinzaEscuro,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            child: SizedBox.shrink(),
          ),
          Container(
            height: 58,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ColorsUtil.shadow,
                  blurRadius: 60,
                  spreadRadius: 0,
                  offset: Offset(0, 16),
                )
              ],
            ),
            child: FlatButton(
              onPressed: () {
                print('Get started');
                frwkNavigator.navigate(
                  HomeScreen(),
                  modal: true,
                  replace: true,
                );
              },
              child: Text(
                'Get started',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorsUtil.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: ColorsUtil.roxo,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(24.0),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 58,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ColorsUtil.shadow,
                  blurRadius: 60,
                  spreadRadius: 0,
                  offset: Offset(0, 16),
                )
              ],
            ),
            child: FlatButton(
              onPressed: () {
                print('Login');
                frwkNavigator.navigate(
                  LoginScreen(),
                );
              },
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorsUtil.roxo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: ColorsUtil.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
