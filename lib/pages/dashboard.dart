import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Latar belakang putih
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/logo2.png', // Ganti sesuai file logo Anda
                          width: 100, // Perbesar ukuran logo
                          height: 100,
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(
                            Icons.account_circle,
                            color: Color.fromARGB(255, 74, 74, 74),
                          ),
                          iconSize: 36.0, // Perbesar ukuran ikon
                          onPressed: () {
                            // Tambahkan aksi untuk profil
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // Geser teks Pelatihan ke kanan
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0), // Tambahkan jarak ke kanan
                      child: Text(
                        'Pelatihan',
                        style: GoogleFonts.poppins(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 74, 74, 74),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 16),
            // Body
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView(
                  children: [
                    // Card pertama
                    TrainingCard(
                      title: 'Teknik Dasar',
                      date: '27/01/2025 14:18',
                      description: 'Cara memegang cue stick yang benar.',
                      trainer: 'Pak Jeffry',
                      score: '0',
                      status: 'Scheduled',
                    ),
                    const SizedBox(height: 16),
                    // Card kedua
                    TrainingCard(
                      title: 'Teknik Dasar',
                      date: '27/01/2025 14:18',
                      description: 'Cara memegang cue stick yang benar.',
                      trainer: 'Pak Jeffry',
                      score: '87',
                      status: 'Lulus',
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

class TrainingCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final String trainer;
  final String score;
  final String status;

  TrainingCard({
    required this.title,
    required this.date,
    required this.description,
    required this.trainer,
    required this.score,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
             color: Color.fromARGB(255, 74, 74, 74),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            date,
            style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Text(
            'Latihan: $description',
            style: GoogleFonts.poppins(fontSize: 14),
          ),
          Text(
            'Pelatih: $trainer',
            style: GoogleFonts.poppins(fontSize: 14),
          ),
          Text(
            'Nilai: $score',
            style: GoogleFonts.poppins(fontSize: 14),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: status == 'Scheduled' ? Colors.blue : Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                status,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
