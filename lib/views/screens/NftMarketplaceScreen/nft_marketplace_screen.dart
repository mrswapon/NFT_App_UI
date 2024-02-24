import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft_app/utils/app_constants.dart';
import 'package:nft_app/views/screens/NftMarketplaceScreen/InnerWidget/custom_viewer.dart';
import 'package:nft_app/views/widgets/custom_text.dart';

import '../../../utils/app_images.dart';
import 'InnerWidget/custom_container.dart';
import 'InnerWidget/custom_slider.dart';

class NftMarketplaceScreen extends StatelessWidget {
  const NftMarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF1B1E3E),
      //=================================>  Body Section <============================
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 27.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CustomText(
                  text: AppConstants.nftMarketplace,
                  fontWeight: FontWeight.w700,
                  fontsize: 25.h,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30.h),
              const CustomSlider(),
              //==================================> Trending Collections Section <==============================

              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CustomText(
                  text: AppConstants.trending,
                  fontWeight: FontWeight.w600,
                  fontsize: 20.h,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10.w),
                    CustomContainer(
                      widget: Image.asset(AppImages.abAirtimg,
                          width: 155.w, height: 155.h),
                      title: AppConstants.abstractArt,
                    ),
                    SizedBox(width: 10.w),
                    CustomContainer(
                      widget: Image.asset(AppImages.tdArt,
                          width: 155.w, height: 155.h),
                      title: AppConstants.tdArt,
                    ),
                    SizedBox(width: 10.w),
                    CustomContainer(
                      widget: Image.asset(AppImages.protatAirt,
                          width: 155.w, height: 155.h),
                      title: AppConstants.portraitArt,
                    ),
                    SizedBox(width: 10.w),
                    CustomContainer(
                      widget: Image.asset(AppImages.metaverse,
                          width: 155.w, height: 155.h),
                      title: AppConstants.metaverse,
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ),

              //==================================> Top Seller Section <==============================

              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CustomText(
                  text: AppConstants.topSeller,
                  fontWeight: FontWeight.w600,
                  fontsize: 20.h,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10.w),
                    CustomViewer(
                      widget: Image.asset(AppImages.wave,
                          width: 155.w, height: 155.h),
                      title: AppConstants.wave,
                    ),
                    SizedBox(width: 10.w),
                    CustomViewer(
                      widget: Image.asset(AppImages.abstratPink,
                          width: 155.w, height: 155.h),
                      title: AppConstants.abstract,
                    ),
                    SizedBox(width: 10.w),
                    CustomViewer(
                      widget: Image.asset(AppImages.wave2,
                          width: 155.w, height: 155.h),
                      title: AppConstants.wave,
                    ),
                    SizedBox(width: 10.w),
                    CustomViewer(
                      widget: Image.asset(AppImages.avvvv,
                          width: 155.w, height: 155.h),
                      title: AppConstants.abstractArt,
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ),
              //==================================> Hot News Items Section <==============================
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CustomText(
                  text: AppConstants.hotNew,
                  fontWeight: FontWeight.w600,
                  fontsize: 20.h,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10.w),
                    CustomViewer(
                      widget: Image.asset(AppImages.song,
                          width: 155.w, height: 155.h),
                      title: AppConstants.music,
                    ),
                    SizedBox(width: 10.w),
                    CustomViewer(
                      widget: Image.asset(AppImages.ball,
                          width: 155.w, height: 155.h),
                      title: AppConstants.ball,
                    ),
                    SizedBox(width: 10.w),
                    CustomViewer(
                      widget: Image.asset(AppImages.ring,
                          width: 155.w, height: 155.h),
                      title: AppConstants.ring,
                    ),
                    SizedBox(width: 10.w),
                    CustomViewer(
                      widget: Image.asset(AppImages.beer,
                          width: 155.w, height: 155.h),
                      title: AppConstants.beer,
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
