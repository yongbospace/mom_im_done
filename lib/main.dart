import 'package:flutter/material.dart';
import 'package:mom_im_done/common/component/custom_text_form_field.dart';
import 'package:mom_im_done/common/const/colors.dart';
import 'package:mom_im_done/common/view/splash_screen.dart';
import 'package:mom_im_done/user/view/login_screen.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'NanumSquareRound'),
      home: SplashScreen(),
    );
  }
}
