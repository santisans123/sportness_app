import 'package:first_app/admin/aktifitas.dart';
import 'package:first_app/admin/aktifitas_cu.dart';
import 'package:first_app/admin/gizi.dart';
import 'package:first_app/admin/gizi_cu.dart';
import 'package:first_app/admin/gizi_ext.dart';
import 'package:first_app/admin/gizishop_cu.dart';
import 'package:first_app/admin/home.dart';
import 'package:first_app/admin/shopgizi.dart';
import 'package:first_app/admin/shopgizi_detail.dart';
import 'package:first_app/customer/calculation/activity_form.dart';
import 'package:first_app/customer/calculation/calorie_form.dart';
import 'package:first_app/customer/calculation/controller/activity_controller.dart';
import 'package:first_app/customer/calculation/controller/calorie_controller.dart';
import 'package:first_app/customer/calculation/history_calorie.dart';
import 'package:first_app/customer/calculation/result_calculate.dart';
import 'package:first_app/customer/cart.dart';
import 'package:first_app/customer/cart_checkout.dart';
import 'package:first_app/customer/cust_riwayat.dart';
import 'package:first_app/customer/cust_riwayat_detail.dart';
import 'package:first_app/customer/kalender.dart';
import 'package:first_app/customer/kalori.dart';
import 'package:first_app/customer/nutrishop_addcart.dart';
import 'package:first_app/customer/nutrishop_detail.dart';
import 'package:first_app/customer/profile.dart';
import 'package:first_app/customer/profile_pic.dart';
import 'package:first_app/partner/driver_home.dart';
import 'package:first_app/partner/driver_map.dart';
import 'package:first_app/partner/driver_map2.dart';
import 'package:first_app/partner/driver_pendapatan.dart';
import 'package:first_app/partner/driver_profile.dart';
import 'package:first_app/partner/nutrishop_home.dart';
import 'package:first_app/partner/nutrishop_pendapatan.dart';
import 'package:first_app/partner/nutrishop_pesandetail.dart';
import 'package:first_app/partner/nutrishop_produk.dart';
import 'package:first_app/partner/nutrishop_produk_add.dart';
import 'package:first_app/partner/nutrishop_profile.dart';
import 'package:first_app/partner/nutrisionis_chat.dart';
import 'package:first_app/partner/nutrisionis_home.dart';
import 'package:first_app/partner/nutrisionis_profile.dart';
import 'package:first_app/partner/regist_nutrishop_lokasi.dart';
import 'package:first_app/partner/tes.dart';
import 'package:first_app/partner/tes2.dart';
import 'package:first_app/partner/tes3.dart';
import 'package:first_app/partner/tes4.dart';
import 'package:first_app/partner/tes5.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:first_app/splash.dart';
import 'package:first_app/first.dart';
import 'package:first_app/customer/login.dart';
import 'package:first_app/customer/register.dart';
import 'package:first_app/customer/home.dart';
import 'package:first_app/customer/edukasi.dart';
import 'package:first_app/customer/edukasi_show.dart';
import 'package:first_app/customer/nutrishop.dart';
import 'package:first_app/customer/konsultasi.dart';
import 'package:first_app/customer/konsultasi_show.dart';
import 'package:first_app/partner/menu_registrasi.dart';
import 'package:first_app/partner/regist_driver.dart';
import 'package:first_app/partner/regist_nutrishop.dart';
import 'package:first_app/partner/regist_nutrisionis.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://fzrrcwtbtiztdkyriotj.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cnJjd3RidGl6dGRreXJpb3RqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkyNTI4MTYsImV4cCI6MjAxNDgyODgxNn0.7hxc-ECq7kV_VEeBJKGyQlVjtN5JPeWm6q9zGhkuR_4',
    authFlowType: AuthFlowType.pkce,
  );
  runApp(MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CalorieController());
    Get.put(ActivityController());

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        MonthYearPickerLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        // Splash page is needed to ensure that authentication and page loading works correctly
        '/': (_) => const SplashPage(),
        '/first': (_) => First(),
        '/login': (_) => Login(),
        '/customer_reg': (_) => Customer_Register(),
        '/customer_home': (_) => Customer_Home(),
        '/customer_edukasi': (_) => CustomerEdukasi(),
        '/customer_edukasi_show': (_) => CustomerEdukasiShow(),
        /*'/customer_riwayat': (_) => CustomerRiwayat(
              title: '',
            ),*/
        '/customer_riwayat_detail': (_) => customerRiwayatDetail(),
        '/customer_riwayat': (_) => MyHomePage(),
        '/customer_shop': (_) => CustomerShop(),
        '/customer_shop_detail': (_) => CustomerShopDetail(),
        '/customer_shop_addcart': (_) => CustomerShopAddcart(),
        '/customer_cart': (_) => CustomerCart(),
        '/customer_cart_checkout': (_) => CustomerCartCheckout(),
        '/customer_konsultasi': (_) => CustomerKonsultasi(),
        '/customer_konsultasi_show': (_) => CustomerKonsultasiShow(),
        '/customer_kalori': (_) => CustomerKalori(),
        '/customer_profile': (_) => CustomerProfile(),
        '/cust_kalender': (_) => custtKalender(),
        '/menu_registrasi': (_) => Menu_Registrasi(),
        '/reg_driver': (_) => Regist_Driver(),
        '/reg_nutrishop': (_) => Regist_Nutrishop(),
        '/reg_nutrishop_lokasi': (_) => Regist_Nutrishop_lokasi(),
        '/reg_nutrisionis': (_) => Regist_Nutrisionis(),
        '/nutrisionis_home': (_) => NutrisionisHome(),
        '/nutrisionis_konsultasi_show': (_) => NutrisionisChat(),
        '/nutrisionis_profile': (_) => NutrisionisProfile(),
        '/nutrishop_home': (_) => NutrishopHome(),
        '/nutrishop_pesandetail': (_) => NutrishopPesananDetail(),
        '/nutrishop_produk': (_) => NutrishopProduk(),
        '/nutrishop_produk_add': (_) => NutrishopAdd(),
        '/nutrishop_profile': (_) => NutrishopProfile(),
        '/nutrishop_pendapatan': (_) => shopPendapatan(),
        '/driver_home': (_) => DriverHome(),
        '/driver_map': (_) => DriverMap(),
        '/driver_map2': (_) => DriverMap2(),
        '/driver_profile': (_) => DriverProfile(),
        '/driver_pendapatan': (_) => driverPendapatan(),
        '/admin_home': (_) => adminHome(),
        '/admin_gizi': (_) => adminGizi(), //cabora
        '/admin_gizi_cu': (_) => adminGiziCu(), //cabora
        '/admin_gizi_ext': (_) => adminGiziExt(), //cabora
        '/admin_aktifitas': (_) => adminAktifitas(),
        '/admin_aktifitas_cu': (_) => adminAktifitasCu(),
        '/admin_gizishop': (_) => adminShopGizi(),
        '/admin_gizishop_detail': (_) => adminShopGiziDetail(),
        '/admin_gizishop_cu': (_) => AdminGiziShopCu(),
        '/profile_pic': (_) => ProfilePic(),
        '/test5': (_) => AccordionApp(),
        '/calorie_form': (_) => CalorieForm(),
        '/activity_form': (_) => ActivityForm(),
        '/result_calculate': (_) => ResultCalculate(),
        '/history_calorie': (_) => HistoryCalorie()
        //'/driver_home': (_) => HomeScreen(),
        //'/driver_home': (_) => GeoMapPage(),
        //'/driver_tes': (_) => ListenLocationWidget(),
      },
    );
  }
}
