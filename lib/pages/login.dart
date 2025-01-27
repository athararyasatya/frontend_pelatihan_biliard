import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/route.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            
            Container(
              height: screenHeight * 0.35, 
              child: Stack(
                children: [
                  Positioned(
                    top: 16,
                    left: 13,
                    child: Image.asset(
                      'assets/images/logo2.png', 
                      width: screenWidth * 0.3,
                      height: screenWidth * 0.3,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: -15, 
                    child: Image.asset(
                      'assets/images/icon.png', 
                      width: screenWidth * 0.4, 
                      height: screenWidth * 0.4,
                    ),
                  ),
                ],
              ),
            ),

            
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAF6FF), 
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 27.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.09), 
                    Text(
                      "Login",
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF002B5B), 
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Input username
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: const Icon(Icons.person_outline),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Input password
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.lock_outline),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Tombol login
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.DASHBOARD);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF002B5B),
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.2,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          "LOGIN",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
