
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mate/presentation/resources/colors_theme/app_colors.dart';
import 'package:mail_mate/presentation/resources/common_TextStyles/text_styles.dart';

class AppButtons {
  //filledButton
  static Widget customButton(
      {required String title,
      required Color color,
    
      required VoidCallback onTap,
      bool isShadow = true}) {
    return InkWell(
      onTap: onTap,
      child: Container(
      
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
        alignment: Alignment.center,
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0.r),
          boxShadow: isShadow
              ?  [
                  BoxShadow(
                    color:AppColors.lightGreyColor ,
                    spreadRadius: 2.0,
                    blurRadius: 7,
                    offset: Offset(0.0, 5.0),
                  )
                ]
              : [],
          color: color,
        ),
        child: FittedBox(
          child: Text(
            title,
            style: Styles.PTScans(15.sp, AppColors.primaryWhiteColor, FontWeight.bold),
          ),
        ),
      ),
    );
  }
   static Widget customShadowButton(
      {required String title,
      required Color color,
    
      required VoidCallback onTap,
      bool isShadow = true}) {
    return InkWell(
      onTap: onTap,
      child: Container(
      
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
        alignment: Alignment.center,
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0.r),
          boxShadow: isShadow
              ?  [
                  BoxShadow(
                    color:AppColors.lightTextColor ,
                    spreadRadius: 60.0,
                    blurRadius: 1000,
                    offset: Offset(0.0, 3.0),
                  )
                ]
              : [],
          color: color,
        ),
        child: FittedBox(
          child: Text(
            title,
            style: Styles.PTScans(15.sp, AppColors.primaryWhiteColor, FontWeight.bold),
          ),
        ),
      ),
    );
  }

  static Widget backButton({
    required BuildContext context,
    required VoidCallback onTap,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: 30.sp,
        width: 30.sp,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0.5,
              blurRadius: .5,
              offset: Offset(0, 0.9), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.only(
          left: 5.sp,
        ),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 18.0.sp,
        ),
      ),
    );
  }
}
