import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:nft_app/utils/app_constants.dart';
import 'package:nft_app/views/widgets/custom_text.dart';
import '../../utils/app_images.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppImages.welcomeBg), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.h),
            CustomText(
              text: AppConstants.welcomeNFT,
              fontWeight: FontWeight.w900,
              fontsize: 36.h,
              color: Colors.white,
            ),
            const Spacer(),
            GlassContainer(
              blur: 12,
              child: Container(
                width: double.infinity,
                height: 191.h,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF7e6487), width: 1.w),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(27.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(27.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: AppConstants.explore,
                        fontWeight: FontWeight.w700,
                        fontsize: 19.h,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5.h),
                      CustomText(
                        text: AppConstants.youCan,
                        fontWeight: FontWeight.w400,
                        fontsize: 11.h,
                        maxline: 2,
                        color: Colors.white,
                      ),
                      SizedBox(height: 20.h),

                      //=================================> Get Started Button <========================
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 198.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF6b6ccd), width: 1.w),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [Color(0xFF664a79), Color(0xFF5251a7)],
                            ),
                            color: const Color(0xFF654975),
                            borderRadius: BorderRadius.circular(33.r),
                          ),
                          child: Center(
                            child: CustomText(
                              text: AppConstants.getStarted,
                              fontsize: 15.h,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 84.h),
          ],
        ),
      ),
    ));
  }
}
