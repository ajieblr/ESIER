import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class ProfilPageScreen extends StatelessWidget {
  const ProfilPageScreen({Key? key})
      : super(
          key: key,
        );

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
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.whiteA700, appTheme.lightBlue30001],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 85.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame12,
                  height: 147.adaptSize,
                  width: 147.adaptSize,
                ),
                SizedBox(height: 25.v),
                Text(
                  "Hello Irsyan",
                  style: CustomTextStyles.titleLargeMedium,
                ),
                Text(
                  "+6282333888833",
                  style: CustomTextStyles.bodySmall10,
                ),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  height: 34.v,
                  width: 104.h,
                  text: "Log out",
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 14.v,
          bottom: 14.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Profil",
      ),
    );
  }
}
