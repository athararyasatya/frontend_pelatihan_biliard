import 'package:flutter/material.dart';
import 'package:frontend_wahyu/pages/pertandingan.dart';
import 'package:frontend_wahyu/pages/ranking.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: _buildDrawer(context),
      body: SafeArea(
        child: SingleChildScrollView( // Membungkus halaman dengan scroll
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
                          'assets/images/logo2.png',
                          width: 100,
                          height: 100,
                        ),
                        const Spacer(),
                        Builder(
                          builder: (context) => IconButton(
                            icon: const Icon(
                              Icons.account_circle,
                              color: Color.fromARGB(255, 74, 74, 74),
                            ),
                            iconSize: 36.0,
                            onPressed: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Pelatihan',
                        style: GoogleFonts.poppins(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 74, 74, 74),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Body
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                  shrinkWrap: true, // Membatasi tinggi ListView sesuai isi
                  physics: NeverScrollableScrollPhysics(), // Nonaktifkan scroll internal ListView
                  itemCount: 10, // Ganti sesuai jumlah data Anda
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        TrainingCard(
                          title: 'Latihan ${index + 1}',
                          date: '27/01/2025 14:18',
                          description: 'Deskripsi Latihan ${index + 1}',
                          trainer: 'Pelatih ${index + 1}',
                          score: '${index * 10}',
                          status: index % 2 == 0 ? 'Scheduled' : 'Lulus',
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFF5F5F5),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Rizki Wahyu',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 74, 74, 74),
                ),
              ),
              accountEmail: Text(
                'rizki12@gmail.com',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 74, 74, 74),
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Color.fromARGB(255, 74, 74, 74),
                ),
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5F5),
              ),
            ),
            _buildDrawerItem(
              icon: Icons.home,
              title: 'Home',
              color: const Color.fromARGB(255, 74, 74, 74),
              hoverColor: Colors.grey[400]!,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            _buildDrawerItem(
              icon: Icons.person,
              title: 'Profile',
              color: const Color.fromARGB(255, 74, 74, 74),
              hoverColor: Colors.grey[400]!,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            _buildDrawerItem(
              icon: Icons.sports_esports,
              title: 'Pertandingan',
              color: const Color.fromARGB(255, 74, 74, 74),
              hoverColor: Colors.grey[400]!,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PertandinganPage()),
                );
              },
            ),
            _buildDrawerItem(
              icon: Icons.leaderboard,
              title: 'Top Ranking',
              color: const Color.fromARGB(255, 74, 74, 74),
              hoverColor: Colors.grey[400]!,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RankingPage()),
                );
              },
            ),
            const Divider(),
            _buildDrawerItem(
              icon: Icons.logout,
              title: 'Logout',
              color: Colors.red,
              hoverColor: Colors.grey[400]!,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required Color color,
    required Color hoverColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      splashColor: hoverColor,
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: color,
          ),
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

  const TrainingCard({
    Key? key,
    required this.title,
    required this.date,
    required this.description,
    required this.trainer,
    required this.score,
    required this.status,
  }) : super(key: key);

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
              color: const Color.fromARGB(255, 74, 74, 74),
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
