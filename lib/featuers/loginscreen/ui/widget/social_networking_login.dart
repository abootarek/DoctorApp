
import 'package:doc_app_new/core/helper/sixbox.dart';
import 'package:doc_app_new/core/theming/colors.dart';
import 'package:flutter/material.dart';


class SocialNetworkingLogin extends StatelessWidget {
  const SocialNetworkingLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: ColorsApp.transparent,
          child: Image.asset(
            'assets/images/Login_google.png',
          ),
        ),
        horixontalspace(32),
        CircleAvatar(
          backgroundColor: ColorsApp.transparent,
          child: Image.asset('assets/images/Login facebook.png'),
        ),
        horixontalspace(32),
        CircleAvatar(
          backgroundColor: ColorsApp.transparent,
          child: Image.asset('assets/images/Login IOS.png'),
        ),
      ],
    );
  }
}
