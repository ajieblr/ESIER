import 'package:flutter/material.dart';
import '../../core/app_export.dart';
// import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/app_bar/appbar_title.dart';
// import '../../widgets/custom_elevated_button.dart';
// import '../../widgets/custom_checkbox_button.dart';

class MetodePembayaranScreen extends StatelessWidget {
  MetodePembayaranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1.19, -0.03),
              end: Alignment(0.18, 0.88),
              colors: [appTheme.lightBlue200, appTheme.blue600],
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 100.v),
            padding: EdgeInsets.symmetric(
              horizontal: 40.h,
              vertical: 50.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.dana,
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 5.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "Dana: 62-812****4788",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.v,),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.gopay,
                      width: 25.adaptSize,
                      height: 25.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 6.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "Gopay: 62-812****4788",
                        style: theme.textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 60.v,),
                Container(
                  width: 252.h,
                  margin: EdgeInsets.only(right: 55.h),
                  child: Text(
                    "Tambahkan metode pembayaran ke akun anda",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 30.v,),
                Padding(
                  padding: EdgeInsets.only(right: 70.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.card,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.only(bottom: 5.v),
                      ),
                      Expanded(
                        child: Container(
                          width: 204.h,
                          margin: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "Tambahkan kartu kredit atau debit",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 26.v,),
              ],
            ),
          ),
        ),
      ),
    );
  }
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.arrowLeftVector,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 6.v,
          bottom: 4.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Metode Pembayaran",
      ),
    );
  }
}