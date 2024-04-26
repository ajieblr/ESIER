import 'package:ajieblr_s_application3/presentation/daftar_page_revisi_screen/daftar_page_revisi_screen.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
// import '../../routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.89, 0.19),
                  end: Alignment(0.25, 0.84),
                  colors: [appTheme.lightBlue100, appTheme.lightBlue800],
                ),
              ),
              child: SizedBox(
                child: CustomImageView(
                  imagePath: ImageConstant.imageLogoApp,
                  height: 212.adaptSize,
                  width: 212.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 20, // Adjust the bottom margin as needed
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(150, 50))
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DaftarPageRevisiScreen()),);
                    // Handle button press
                  },
                  child: Text("Get Started", style: TextStyle(color: Colors.black),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
