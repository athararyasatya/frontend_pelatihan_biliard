import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
           // Header
ClipRRect(
  borderRadius: const BorderRadius.only(
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(20),
  ),
  child: Container(
    color: const Color(0xFF0A3047), // Warna biru header
    padding: const EdgeInsets.all(18.0),
    child: Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
            ),
            const SizedBox(width: 8),
            Text(
              'Profile',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Image.asset(
              'assets/images/logo.png', // Logo di kanan atas
              width: 70,
              height: 70,
            ),
          ],
        ),
        const SizedBox(height: 16),
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.person,
            size: 60,
            color: Color(0xFF0A3047),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Rizki Wahyu',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          'rizki12@gmail.com',
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    ),
  ),
),

            const SizedBox(height: 16),
            // Konten Profile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildProfileDetail(
                    icon: Icons.phone,
                    title: 'Nomor Telpon',
                    value: '081267337707',
                  ),
                  const SizedBox(height: 16),
                  _buildProfileDetail(
                    icon: Icons.email,
                    title: 'Email',
                    value: 'rizki12@gmail.com',
                  ),
                  const SizedBox(height: 16),
                  _buildProfileDetail(
                    icon: Icons.location_on,
                    title: 'Address',
                    value: 'Kp. Panongan',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDetail({required IconData icon, required String title, required String value}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 24, color: const Color(0xFF0A3047)),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              value,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xFF4A4A4A),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
