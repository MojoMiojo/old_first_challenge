import 'package:desafio_padawans_flutter/src/library/utils/global.dart';
import 'package:desafio_padawans_flutter/src/screens/home/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../library/utils/colors_util.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(35, 100, 35, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Sign in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Color(0XFF2C2929),
                        letterSpacing: -0.04,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  MaterialButton(
                    minWidth: 305.0,
                    height: 58.0,
                    onPressed: () {
                      frwkNavigator.navigate(HomeScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo_apple.png'),
                        SizedBox(
                          width: 35.0,
                        ),
                        Text(
                          'Sign in with Apple',
                          style: TextStyle(
                            color: ColorsUtil.cinzaEscuro,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                    color: ColorsUtil.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  MaterialButton(
                    minWidth: 305.0,
                    height: 58.0,
                    onPressed: () {
                      frwkNavigator.navigate(HomeScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo_google.png'),
                        SizedBox(
                          width: 35.0,
                        ),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                              color: Color(0xFF4285F4),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        )
                      ],
                    ),
                    color: ColorsUtil.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    'or get a link emailed to you',
                    style: TextStyle(
                        fontSize: 15.0, color: Colors.black.withOpacity(0.4)),
                    //  textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    height: 58,
                    width: 305.0,
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
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.0),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        hintText: "Work email adress",
                        filled: true,
                        fillColor: ColorsUtil.white,
                        hintStyle: TextStyle(
                            fontSize: 20,
                            color: ColorsUtil.cinzaEscuro.withOpacity(0.4),
                            fontWeight: FontWeight.w500,
                            wordSpacing: 0.4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    height: 58,
                    width: 305.0,
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
                      focusColor: ColorsUtil.white,
                      onPressed: () {
                        frwkNavigator.navigate(HomeScreen());
                      },
                      child: Text(
                        'Email me a sign up link ',
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
                    height: 70.0,
                  ),
                ],
              ),
            ),
            Opacity(
              opacity: 0.1,
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  color: ColorsUtil.cinzaEscuro,
                ),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Column(
              children: [
                Text(
                  'You are completely safe.',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: ColorsUtil.cinzaEscuro,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Read our Terms & Conditions',
                  style: TextStyle(
                      color: ColorsUtil.roxo,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
