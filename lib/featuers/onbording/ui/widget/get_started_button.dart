
import 'package:doc_app_new/core/helper/extintion.dart';
import 'package:doc_app_new/core/routing/routs.dart';
import 'package:doc_app_new/core/theming/colors.dart';
import 'package:flutter/material.dart';


import '../../../../core/theming/style.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color>(ColorsApp.mainblue),
          minimumSize: const WidgetStatePropertyAll(
            Size(double.infinity, 52),
          )),
      onPressed: () {
        context.pushNamed(Routes.loginscreen);
      },
      child: Text(
        'Get Started',
        style: TextStyles.font16white,
      ),
    );
  }
}
