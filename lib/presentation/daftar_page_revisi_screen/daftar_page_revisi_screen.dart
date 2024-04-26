import 'package:ajieblr_s_application3/presentation/login_page_revisi_screen/login_page_revisi_screen.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

class DaftarPageRevisiScreen extends StatelessWidget {
  DaftarPageRevisiScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberOneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController password1Controller = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1.19, -0.03),
              end: Alignment(0.18, 0.88),
              colors: [appTheme.blue200, appTheme.blue600],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildStackVectorTwo(context),
                    SizedBox(height: 49.v),
                    Text(
                      "Welcome",
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "Smart Payment",
                      style: CustomTextStyles.bodySmallGray200,
                    ),
                    SizedBox(height: 28.v),
                    _buildUserName(context),
                    SizedBox(height: 20.v),
                    _buildPhoneNumberOne(context),
                    SizedBox(height: 20.v),
                    _buildPassword(context),
                    SizedBox(height: 20.v),
                    _buildPassword1(context),
                    SizedBox(height: 20.v),
                    _buildDaftar(context),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackVectorTwo(BuildContext context) {
    return SizedBox(
      height: 272.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector2,
            height: 272.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imageLogoApp,
            height: 128.adaptSize,
            width: 128.adaptSize,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top:  65.v),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.h),
      child: CustomTextFormField(
        controller: userNameController,
        hintText: "Username",
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.h),
      child: CustomTextFormField(
        controller: phoneNumberOneController,
        hintText: "No Telepon",
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.h),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.h),
      child: CustomTextFormField(
        controller: password1Controller,
        hintText: "Repeat Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildDaftar(BuildContext context) {
    return CustomElevatedButton(
      width: 133.h,
      text: "Daftar",
      buttonTextStyle: CustomTextStyles.labelLargeBlack900,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPageRevisiScreen()));
      },
    );
  }
}
