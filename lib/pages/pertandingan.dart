import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PertandinganPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.only(top: 9.0),
              child: Image.asset(
                'assets/images/logo2.png',
                width: 75,
                height: 75,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pertandingan',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 74, 74, 74),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildMatchCard(
                    title: '8-Ball',
                    date: '27/01/2025 14:18',
                    matchId: 'P-00001',
                    playerAScore: '0',
                    playerBScore: '0',
                    status: 'Belum Dimulai',
                    statusColor: Colors.blue,
                  ),
                  const SizedBox(height: 16),
                  _buildMatchCard(
                    title: '9-Ball',
                    date: '27/01/2025 14:18',
                    matchId: 'P-00002',
                    playerAScore: '3',
                    playerBScore: '1',
                    status: 'Selesai',
                    statusColor: Colors.green,
                  ),
                  const SizedBox(height: 16),
                  _buildMatchCard(
                    title: 'Straight Pool',
                    date: '27/01/2025 14:18',
                    matchId: 'P-00003',
                    playerAScore: '5',
                    playerBScore: '4',
                    status: 'Selesai',
                    statusColor: Colors.green,
                  ),
                  const SizedBox(height: 16),
                  _buildMatchCard(
                    title: 'Snooker',
                    date: '27/01/2025 15:30',
                    matchId: 'P-00004',
                    playerAScore: '2',
                    playerBScore: '2',
                    status: 'Berlangsung',
                    statusColor: Colors.orange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMatchCard({
    required String title,
    required String date,
    required String matchId,
    required String playerAScore,
    required String playerBScore,
    required String status,
    required Color statusColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Baris judul pertandingan dan kode pertandingan
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 74, 74, 74),
                ),
              ),
              Text(
                matchId,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          // Baris tanggal dan waktu
          Text(
            date,
            style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          // Skor pemain
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pemain A',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 74, 74, 74),
                      ),
                    ),
                    Text(
                      playerAScore,
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const Text(
                'VS',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 74, 74, 74),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Pemain B',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 74, 74, 74),
                      ),
                    ),
                    Text(
                      playerBScore,
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Status badge di kanan bawah
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: statusColor,
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
