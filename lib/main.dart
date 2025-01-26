import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/route.dart'; // Mengimpor rute dari folder routes
import 'package:google_fonts/google_fonts.dart'; // Pastikan dependency sudah diinstal

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX Routing',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),  //Poppins secara global
      ),
      initialRoute: AppRoutes.WELCOME, // Halaman awal diatur ke WelcomePage
      getPages: AppRoutes.routes, // Daftar rute diambil dari route.dart
    );
  }
}
