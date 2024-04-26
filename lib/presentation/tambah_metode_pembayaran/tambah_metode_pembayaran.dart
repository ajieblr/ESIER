import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class TambahMetodePembayaranScreen extends StatelessWidget {
  const TambahMetodePembayaranScreen({Key? key}) : super(key: key);

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
            padding: EdgeInsets.symmetric(
              horizontal: 40.h,
              vertical: 120.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBayar,
                  height: 196.v,
                  width: 310.h,
                ),
                SizedBox(height: 30.v,),
                Container(
                  width: 273.h,
                  margin: EdgeInsets.symmetric(horizontal: 28.h),
                  child: Text(
                    "Atur Metode Pembayaran Anda",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  width: 306.h,
                  child: Text(
                    "Yuk, tingkatkan kenyamanan transaksi dengan \nmengatur default metode pembayaranmu di \naplikasi kami! Dengan itu, pembayaranmu akan \nmenjadi lebih lancar dan cepat. Jangan lewatkan \nkesempatan untuk mengoptimalkan pengalaman \ntransaksi hari ini!",
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.5,
                      color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 5.v,)
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildTambahkan(context),
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
          top: 10.v,
          bottom: 4.v,
        ),
      ),
    );
  }
  Widget _buildTambahkan(BuildContext context) {
      return CustomElevatedButton(
        text: "Tambahkan",
        margin: EdgeInsets.only(
          left: 40.h,
          right: 40.h,
          bottom: 50.v,
        ),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleLargeOnPrimary,
    );
  }
}