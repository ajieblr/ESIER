// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({Key? key}) : super(key: key,);

  TextEditingController userNameController = TextEditingController();
  
  TextEditingController teleponValueController = TextEditingController();
  
  TextEditingController messageController = TextEditingController();
  
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 80.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.largeMailImage,
                      height: 207.v,
                      width: 244.h,
                    ),
                    SizedBox(height: 10.v,),
                    Text(
                      "Contact Us",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 8.v,),
                    Container(
                      width: 300.h,
                      margin: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Text(
                        "Drop your message withus. One of our costumer service agent will contact you",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.30,
                          color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(height: 33.v,),
                    __buildUserName(context),
                    SizedBox(height: 24.v,),
                    _buildTeleponValue(context),
                    SizedBox(height: 24.v,),
                    _buildMessage(context),
                    SizedBox(height: 5.v,),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBayar(context),
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
            top: 4.v,
            bottom: 4.v,
          ),
          onTap: () {

          },
        ),
        title: AppbarTitle(
          text: "Contact Us",
          margin: EdgeInsets.only(left: 21.h),
        ),
      );
    }
    Widget __buildUserName(BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: CustomTextFormField(
          controller: userNameController,
          hintText: "Username",
        ),
      );
    }
    Widget _buildTeleponValue(BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 9.h,
          right: 12.h,
        ),
        child: CustomTextFormField(
          controller: teleponValueController,
          hintText: "Telepon",
        ),
      );
    }
    Widget _buildMessage(BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: messageController,
          hintText: "Message",
          textInputAction: TextInputAction.done,
          maxLines: 8,
        ),
      );
    }
    Widget _buildBayar(BuildContext context) {
      return CustomElevatedButton(
        text: "Bayar",
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