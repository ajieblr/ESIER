import 'package:ajieblr_s_application3/presentation/daftar_page_revisi_screen/daftar_page_revisi_screen.dart';
import 'package:ajieblr_s_application3/presentation/home_page_screen/home_page_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class LoginPageRevisiScreen extends StatefulWidget {
  const LoginPageRevisiScreen({Key? key}) : super(key: key);

  @override
  State<LoginPageRevisiScreen> createState() => _LoginPageRevisiScreenState();
}

class _LoginPageRevisiScreenState extends State<LoginPageRevisiScreen> {
  
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // User? _user;

  @override
  // void initState() {
  //   super.initState();
  //   _auth.authStateChanges().listen((event) {
  //     setState(() {
  //       _user = event;
  //       if (_user != null) {
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(builder: (context) => HomePageScreen()),
  //         );
  //       } else {
          
  //       }
  //     });
  //   });
  // }

  TextEditingController _userNameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

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
                    SizedBox(height: 85.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.h),
                      child: CustomTextFormField(
                        controller: _userNameController,
                        hintText: "Username",
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.h),
                      child: CustomTextFormField(
                        controller: _passwordController,
                        hintText: "Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    CustomElevatedButton(
                      width: 150.h,
                      text: "Login",
                      buttonTextStyle: CustomTextStyles.labelLargeBlack900,
                      onPressed: () {
                        FirebaseAuth.instance.signInWithEmailAndPassword(email: _userNameController.text, password: _passwordController.text).then((value) {
                          print("Sign In");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageScreen()));
                        });
                      },
                    ),
                    SizedBox(height: 10.v,),
                    signUpOption(),
                    SizedBox(height: 120.v),
                    _googleSigninButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  // sign up option
  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DaftarPageRevisiScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
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
            margin: EdgeInsets.only(top: 65.v),
          )
        ],
      ),
    );
  }
  Widget _googleSigninButton() {
    return Center(
      child: SizedBox(
        height: 40,
        child: SignInButton(
          Buttons.google,
          text: "Sign in with Google",
          onPressed: () {

          },
        ),
      ),
    );
  }

  // void _handleGoogleSignIn() {
  //   try {
  //     GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
  //     _auth.signInWithProvider(_googleAuthProvider);
  //   } catch (error) {
  //     print(error);
  //   }
  // }
}
