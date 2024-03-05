import 'package:flutter/material.dart';
import 'package:mom_im_done/common/const/colors.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;

  const DefaultLayout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: C_PRIMARY_COLOR,
      body: child,
    );
  }
}
