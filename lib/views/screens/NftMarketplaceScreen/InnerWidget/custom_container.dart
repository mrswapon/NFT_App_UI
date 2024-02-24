import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_images.dart';
import '../../../widgets/custom_text.dart';

class CustomContainer extends StatelessWidget {
  final Widget widget;
  final String title;
  const CustomContainer({
    super.key, required this.widget, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 208.w,
      height: 216.h,
      decoration: BoxDecoration(
          color: const Color(0xFF1D2C4F),
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(width: 2.w, color: const Color(0xFF2E4076))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 35),
        child: Column(
          children: [
            widget,
            SizedBox(height: 10.h),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    CustomText(
                      text: title,
                      fontsize: 13.h,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    const Spacer(),
                    const Icon(Icons.favorite, color: Colors.red,),
                    CustomText(
                      text: '200',
                      fontsize: 16.h,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}