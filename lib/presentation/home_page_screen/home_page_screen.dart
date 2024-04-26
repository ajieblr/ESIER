import 'package:ajieblr_s_application3/presentation/profil_page_screen/profil_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/progressbar_item_widget.dart';
import 'widgets/viewhierarchy_item_widget.dart';

class HomePageScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomePageScreen({Key? key})
      : super(
          key: key,
        );
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        drawer: NavigationDrawer(),
        body: Container(
          // margin: EdgeInsets.only(top: 20),
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
            // margin: EdgeInsets.only(top: 2.v),
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 20.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 60.v,),
                _buildColumnPemakaian(context),
                SizedBox(height: 28.v),
                Text(
                  "Rincian Pemakaian",
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: Colors.white
                  )
                ),
                // _buildViewHierarchy(context),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildContainerRow(
                    context,
                    dateText: "29-2-2004",
                    usageText: "Pemakaian",
                    avarageText: "Rata-rata Mingguan",
                    totalCostText: "Total Biaya",
                    literCounter1: "213 liter",
                    literCounter2: "53 liter",
                    costCounter: "Rp. 34.000",
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildContainerRow(
                    context,
                    dateText: "29-2-2004",
                    usageText: "Pemakaian",
                    avarageText: "Rata-rata Mingguan",
                    totalCostText: "Total Biaya",
                    literCounter1: "213 liter",
                    literCounter2: "53 liter",
                    costCounter: "Rp. 34.000",
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildContainerRow(
                    context,
                    dateText: "29-2-2004",
                    usageText: "Pemakaian",
                    avarageText: "Rata-rata Mingguan",
                    totalCostText: "Total Biaya",
                    literCounter1: "213 liter",
                    literCounter2: "53 liter",
                    costCounter: "Rp. 34.000",
                  ),
                ),
                SizedBox(height: 20.v,),
                CustomElevatedButton(
                  height: 21.v,
                  width: 65.h,
                  text: "More",
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle: CustomTextStyles.labelLargeGray200,
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
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 8.v,
          bottom: 8.v,
        ),
        onTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Home",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLock,
          margin: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 8.v,
          ), onTap: () { 
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPageScreen()));
           },
        ), 
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnPemakaian(BuildContext context) {
    // List<double> progressValues = [0.3, 0.6, 0.9];
    // List<String> textValues = ["259", "345", "489"];
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          margin: EdgeInsets.only(left: 1.h),
          padding: EdgeInsets.symmetric(
            horizontal: 55.h,
            vertical: 30.v,
          ),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Pemakaian",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 30.v),
              Expanded(
                child: SizedBox(
                  height: 98.v,
                  child: ListView.separated(
                    padding: EdgeInsets.only(right: 2.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 43.h,
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      double progressValue = (index + 1) / 3; // Hitung nilai progres yang berbeda
                      return ProgressbarItemWidget(progressValue: progressValue);
                    },
                  ),
                ),
              ),
              SizedBox(height: 12.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ViewhierarchyItemWidget();
        },
      ),
    );
  }

  Widget _buildContainerRow(
    BuildContext context, {
      required String dateText,
      required String usageText,
      required String avarageText,
      required String totalCostText,
      required String literCounter1,
      required String literCounter2,
      required String costCounter,
    }) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dateText,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  SizedBox(height: 6.v,),
                  Text(
                    usageText,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  SizedBox(height: 8.v,),
                  Text(
                    avarageText,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  SizedBox(height: 6.v,),
                  Text(
                    totalCostText,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 23.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    literCounter1,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  SizedBox(height: 7.v,),
                  Text(
                    literCounter2,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  SizedBox(height: 7.v,),
                  Text(
                    costCounter,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: Scaffold(
      body: Container(
        width: 280.h,
        padding: EdgeInsets.only(
          left: 20.h,
          top: 117.v,
          right: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imageIrsyan,
              height: 96.adaptSize,
              width: 96.adaptSize,
              radius: BorderRadius.circular(
                48.h,
              ),
            ),
            SizedBox(height: 22.v,),
            Text(
              "Irsyann",
              style: theme.textTheme.titleLarge,
            ),
            Text(
              "+62 8344 9200 323",
              style: CustomTextStyles.bodySmallBlack800,
            ),
            SizedBox(height: 17.v,),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0),
                leading: CustomImageView(
                  imagePath: ImageConstant.imageList,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
                title: Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 14.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "My Order",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                onTap: () {
                  
                },
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0),
                leading: CustomImageView(
                  imagePath: ImageConstant.imageProfile,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
                title: Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 14.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "Profile",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                onTap: () {

                },
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0),
                leading: CustomImageView(
                  imagePath: ImageConstant.imageCard,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
                title: Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 14.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "Payment Method",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                onTap: () {

                },
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0),
                leading: CustomImageView(
                  imagePath: ImageConstant.imageMail,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
                title: Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 14.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "Contact Us",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                onTap: () {

                },
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0),
                leading: CustomImageView(
                  imagePath: ImageConstant.imageSetting,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
                title: Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 14.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "Setting",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                onTap: () {

                },
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0),
                leading: CustomImageView(
                  imagePath: ImageConstant.imageHelp,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
                title: Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 14.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "Help",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                onTap: () {

                },
            ),
          ],
        ),
      ),
    ),
  );
}