// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_checkbox_button.dart';

class DetailPembayaranScreen extends StatefulWidget {
  @override
  State<DetailPembayaranScreen> createState() => _DetailPembayaranScreenState();
}

class _DetailPembayaranScreenState extends State<DetailPembayaranScreen> {
  
  bool tambahkanDana = false;
  bool tambahkanGopay = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          padding: EdgeInsets.only(top: 70.v),
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
            margin: EdgeInsets.only(top: 10.v),
            padding: EdgeInsets.symmetric(
              horizontal: 40.h,
              vertical: 30.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL40
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Detail Transaksi",
                    style: theme.textTheme.titleSmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 13.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildRowHargaTagihan(
                        context,
                        billingTitle: "Total Pakai",
                        billingAmount: "234 liter",
                      ),
                      SizedBox(height: 20.v,),
                      _buildRowHargaTagihan(
                        context,
                        billingTitle: "Harga Tagihan",
                        billingAmount: "Rp. 32.000",
                      ),
                      SizedBox(height: 20.v,),
                      _buildRowHargaTagihan(
                        context,
                        billingTitle: "Admin",
                        billingAmount: "Rp. 2.000",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h
                  ),
                  child: _buildRowTotalTagihan(
                    context,
                    billingTitle: "Total",
                    billingAmount: "Rp. 34.000",
                  ),
                ),
                SizedBox(height: 50.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Pilih Metode Pembayaran",
                    style: theme.textTheme.titleSmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                Container(
                  padding: EdgeInsets.all(20.h),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                          Spacer(), // akan dibuat checkbox
                          _buildTambahkanDana(context),
                        ],
                      ),
                      SizedBox(height: 10.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.gopay,
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
                              "Gopay: 62-812****4788",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Spacer(),
                          _buildTambahkanGopay(context),
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(height: 22.v,),
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
          top: 6.v,
          bottom: 4.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Detail Pembayaran",
      ),
    );
  }

  Widget _buildRowHargaTagihan(
    BuildContext context, {
      required String billingTitle,
      required String billingAmount,
    }) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            billingTitle,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
          Text(
            billingAmount,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
            ),
          )
        ],
      );
  }
  Widget _buildRowTotalTagihan(
    BuildContext context, {
      required String billingTitle,
      required String billingAmount,
    }) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            billingTitle,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            billingAmount,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      );
  }

  Widget _buildTambahkan(BuildContext context) {
      return CustomElevatedButton(
        text: "Bayar",
        margin: EdgeInsets.only(
          left: 40.h,
          right: 40.h,
          bottom: 50.v,
        ),
        buttonStyle: CustomButtonStyles.fillBlueCircular,
        buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryWhite,
    );
  }
  Widget _buildTambahkanDana(BuildContext context) {
    return CustomCheckboxButton(
      value: tambahkanDana,
      onChange: (value) {
        setState(() {
          tambahkanDana = value;
        });
      },
    );
  }
  Widget _buildTambahkanGopay(BuildContext context) {
    return CustomCheckboxButton(
      value: tambahkanGopay,
      onChange: (value) {
        setState(() {
          tambahkanGopay = value;
        });
      },
    );
  }
}