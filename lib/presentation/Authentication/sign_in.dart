import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mate/presentation/common_widgets/app_button.dart';
import 'package:mail_mate/presentation/common_widgets/customTextField.dart';
import 'package:mail_mate/presentation/resources/Validations/validations.dart';
import 'package:mail_mate/presentation/resources/colors_theme/app_colors.dart';
import 'package:mail_mate/presentation/resources/common_TextStyles/text_styles.dart';

class SignIn extends StatelessWidget {
  

  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
     physics: const BouncingScrollPhysics(),
      
        child: Container(
          color: AppColors.primaryColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, right: 10, left: 80).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: Styles.PTScans(
                          15.sp, AppColors.lightTextColor, FontWeight.bold),
                    ),
                    AppButtons.customShadowButton(
                        title: 'Get Started',
                        color: AppColors.lightTextColor,
                        onTap: () {}),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 50).r,
                child: Text(
                  'MailMate',
                  style: Styles.PTScans(
                      52.sp, AppColors.primaryWhiteColor, FontWeight.bold),
                ),
              ),
              Container(
                height: 460.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: AppColors.primaryWhiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25, horizontal: 15),
                  child: Column(
                    children: [
                      Text(
                        'Welcome Back',
                        style: Styles.PTScans(30,
                            AppColors.primaryBlackColor, FontWeight.bold),
                      ),
                      Text(
                        'Enter your details below',
                        style: Styles.PTScans(
                            15, AppColors.lightTextColor, FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Form(
                            key: formKey,
                          child: CustomTextField(
                            Controller: emailController,
                            hintTextMessage: '',
                            obscureText: false,
                            textInputType: TextInputType.emailAddress,
                            text: 'Email Address',
                            validator: Validate.email,
                          ),
                        ),
                      ),
                      CustomTextField(
                        Controller: passwordController,
                        obscureText: true,
                        textInputType: TextInputType.text,
                        validator: Validate.password,
                        text: "Password",
                        isSuffixPrefix: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40,bottom: 15),
                        child: AppButtons.customButton(title: 'Sign in', color: AppColors.primaryColor, onTap: (){},isShadow: true),
                      )
                     

                    , Text('Forgot your Password?' ,style: Styles.PTScans(15.sp, AppColors.lightTextColor, FontWeight.normal),)
                   
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
