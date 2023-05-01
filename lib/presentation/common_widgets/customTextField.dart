import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mate/presentation/resources/Validations/validations.dart';
import 'package:mail_mate/presentation/resources/colors_theme/app_colors.dart';
import 'package:mail_mate/presentation/resources/common_TextStyles/text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.Controller,
    this.isSuffixPrefix = false,
    this.hintTextMessage,
    required this.obscureText,
    required this.textInputType,
    required this.validator,
    this.suffixIconButton,
    required this.text,
  });
  final String text;
  final bool isSuffixPrefix;
  final String? hintTextMessage;
  final bool obscureText;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final TextEditingController Controller;
  final Widget? suffixIconButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: 350.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightTextColor, width: 1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          isSuffixPrefix?
          Positioned(
              right: 6,
          top: 4,
        
            child: IconButton(onPressed: (){}, icon: Icon(Icons.visibility,color: AppColors.primaryGreyColor,))):Container(),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 10),
              child: Text(
                text,
                style: Styles.PTScans(
                    13.sp, AppColors.lightTextColor, FontWeight.normal),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 8, top: 8),
                child: TextFormField(
                  controller: Controller,
                
                  cursorColor: AppColors.primaryColor,
                  obscureText: obscureText,
                //  showCursor: false,
                  keyboardType: TextInputType.emailAddress,
                  validator: validator,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintTextMessage,
                    // suffixIcon: suffixIconButton,
                  ),
                ),
              ),
            )
          ],
        ),
        ]
      ),
    );
  }
}
