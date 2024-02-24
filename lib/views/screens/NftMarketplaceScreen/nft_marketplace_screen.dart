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
      body: _body(),
    );
  }

   _body() {
    return SingleChildScrollView(
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
            /// =================================> Slider <==============================
            const CustomSlider(),

            ///==================================> Trending Collections Section <==============================

            _trendingCollections(),

            //==================================> Top Seller Section <==============================

            _toSeller(),

            //==================================> Hot News Items Section <==============================
            _hotNewItems()
          ],
        ),
      ),
    );
  }

  _trendingCollections(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }

  _toSeller(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      SizedBox(
        height: 250.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: 10,
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            itemBuilder:(context,index){
          return Padding(
            padding:  EdgeInsets.only(right:10.w
            ),
            child: CustomViewer(
              widget: Image.asset(AppImages.wave,
                  width: 155.w, height: 155.h),
              title: AppConstants.wave,
            ),
          );
        }),
      )


      ],
    );
  }

  _hotNewItems(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
    );
  }
}

