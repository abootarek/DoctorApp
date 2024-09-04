
import 'package:doc_app_new/core/helper/extintion.dart';
import 'package:doc_app_new/core/helper/sixbox.dart';
import 'package:doc_app_new/core/routing/routs.dart';
import 'package:doc_app_new/core/theming/style.dart';
import 'package:doc_app_new/core/widget/app_text_button.dart';
import 'package:doc_app_new/core/widget/app_text_form_field.dart';
import 'package:doc_app_new/featuers/loginscreen/ui/widget/richtext.dart';
import 'package:doc_app_new/featuers/loginscreen/ui/widget/social_networking_login.dart';
import 'package:doc_app_new/featuers/loginscreen/ui/widget/text_and_divider_login.dart';
import 'package:doc_app_new/featuers/loginscreen/ui/widget/text_welcome.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool is_Obscure = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 45.h,
            horizontal: 30.w,
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWelcome(),
                  virticalspace(36),
                  AppTextFormField(
                    hinttext: 'Email',
                    labletext: 'Email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Email for You';
                      }
                      if (value.length < 10) {
                        return 'Email must be at least 10 characters';
                      }
                      return null;
                    },
                  ),
                  virticalspace(16),
                  AppTextFormField(
                    hinttext: 'Password',
                    labletext: 'Password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Password for You';
                      }
                      if (value.length < 10) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    isObscureText: is_Obscure,
                    suffixicon: IconButton(
                      onPressed: () {
                        setState(() {
                          is_Obscure = !is_Obscure;
                        });
                      },
                      icon: Icon(
                        is_Obscure ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                  virticalspace(18),
                  Row(
                    children: [
                      const Checkbox(value: true, onChanged: null),
                      const Text('Remember me'),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font12mainblue,
                        ),
                      )
                    ],
                  ),
                  virticalspace(40),
                  AppTextButton(
                    buttonText: 'Login',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.pushNamed(Routes.onbordingscreen);
                      }
                    },
                    textStyle: TextStyles.font16white,
                  ),
                  virticalspace(46),
                  const TextDividerLogin(),
                  virticalspace(32),
                  const SocialNetworkingLogin(),
                  virticalspace(32),
                  const RichTextComponant(),
                  virticalspace(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account yet?',
                        style: TextStyles.font13black,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyles.font12mainblue,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
