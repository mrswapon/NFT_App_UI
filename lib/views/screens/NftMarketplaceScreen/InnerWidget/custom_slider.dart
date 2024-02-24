import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_images.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168.h,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        itemCount: 3,
        padEnds: false,
        pageSnapping: false,
        physics: BouncingScrollPhysics(),
        reverse: true,
        controller:
        PageController(initialPage: 0, viewportFraction: 0.7),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              //  color: color[index],
                borderRadius: BorderRadius.circular(25.r)),
            child: Image.asset(AppImages.art,
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }
}
