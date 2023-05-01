import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mate/presentation/Authentication/sign_in.dart';
import 'package:mail_mate/presentation/common_widgets/app_button.dart';
import 'package:mail_mate/presentation/common_widgets/navigation.dart';
import 'package:mail_mate/presentation/resources/assets_images/images_src.dart';
import 'package:mail_mate/presentation/resources/colors_theme/app_colors.dart';
import 'package:mail_mate/presentation/resources/common_TextStyles/text_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(
                  top: 120.h,
                ),
                child: const  Image(image: AssetImage(Assets.logoPng))),
            Text(
              'MailMate',
              style: Styles.PTScans(
                  60.sp, AppColors.primaryBlackColor, FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 15).h,
              child: AppButtons.customButton(
                  title: 'Sign in',
                  onTap: () {
                    Navigate.toReplace(context, SignIn());
                  },
                  color: AppColors.primaryColor),
            ),
            AppButtons.customButton(
                title: 'Sign up',
                onTap: () {},
                color: AppColors.primaryGreyColor),
          ],
        ),
      ),
    );
  }
}
