import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_images.dart';
import '../../../widgets/custom_text.dart';

class CustomViewer extends StatelessWidget {
  final Widget widget;
  final String title;
  const CustomViewer({
    super.key, required this.widget, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.w,
      height: 262.h,
      decoration: BoxDecoration(
          color: const Color(0xFF1D2C4F),
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(width: 2.w, color: const Color(0xFF2E4076))
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget,
            SizedBox(height: 10.h),
            CustomText(
              text: title,
              fontsize: 13.h,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            CustomText(
              text: 'wave2#5672',
              fontsize: 13.h,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
            const Spacer(),
            Center(
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.path, color: Colors.grey,),
                  SizedBox(width: 5.w),
                  CustomText(
                    text: '0.018',
                    fontsize: 13.h,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  const Spacer(),
                  const Icon(Icons.favorite_border, color: Colors.grey),
                  SizedBox(width: 5.w),
                  CustomText(
                    text: '200',
                    fontsize: 16.h,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}