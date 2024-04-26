// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
// import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/daftar_page_revisi_screen/daftar_page_revisi_screen.dart';
import '../presentation/home_page_screen/home_page_screen.dart';
import '../presentation/login_page_revisi_screen/login_page_revisi_screen.dart';
import '../presentation/profil_page_screen/profil_page_screen.dart';
import '../presentation/contact_us_screen/contact_us_screen.dart';
import '../presentation/tambah_metode_pembayaran/tambah_metode_pembayaran.dart';
import '../presentation/detail_pembayaran_screen/detail_pembayaran_screen.dart';
import '../presentation/splash_screen/splash_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String loginPageRevisiScreen = '/login_page_revisi_screen';

  static const String daftarPageRevisiScreen = '/daftar_page_revisi_screen';

  static const String splashScreen = '/splash_screen';

  static const String profilPageScreen = '/profil_page_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String contactUsScreen = '/contact_us_screen';
  
  static const String paymentMethodScreen = '/tambah_metode_pembayaran';
  
  static const String detailPembayaranScreen = '/detail_pembayaran_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    loginPageRevisiScreen: (context) => LoginPageRevisiScreen(),
    daftarPageRevisiScreen: (context) => DaftarPageRevisiScreen(),
    profilPageScreen: (context) => ProfilPageScreen(),
    homePageScreen: (context) => HomePageScreen(),
    splashScreen: (context) => SplashScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    contactUsScreen: (context) => ContactUsScreen(),
    paymentMethodScreen: (context) => TambahMetodePembayaranScreen(),
    detailPembayaranScreen: (context) => DetailPembayaranScreen(),
    initialRoute: (context) => DetailPembayaranScreen()
  };
}
