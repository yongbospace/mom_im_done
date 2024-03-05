import 'package:flutter/material.dart';
import 'package:mom_im_done/common/layout/default_layout.dart';

import '../../common/component/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: SafeArea(
        top: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Title(),
            CustomTextFormField(
              hintText: '이메일을 입력하세요.',
              onChanged: (String value) {},
            ),
            CustomTextFormField(
              hintText: '비밀번호를 입력하세요.',
              onChanged: (String value) {},
            ),
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '환영합니다!',
      style: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
