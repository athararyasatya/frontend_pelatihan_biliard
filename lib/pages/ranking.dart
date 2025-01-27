import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RankingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      actions: [
  Padding(
    padding: const EdgeInsets.only(right: 16.0, top: 8.0), 
    child: Transform.scale(
      scale: 1.7, 
      child: SizedBox(
        child: Image.asset(
          'assets/images/logo2.png', 
        ),
      ),
    ),
  ),
],


      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              const SizedBox(height: 16),

              
              Text(
                "Ranking Pemain",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 74, 74, 74),
                ),
              ),
              const SizedBox(height: 24), 

              // Tabel Ranking
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "10 Besar",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 74, 74, 74),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Tabel
                        Table(
                          columnWidths: const {
                            0: FlexColumnWidth(3), 
                            1: FlexColumnWidth(1),
                            2: FlexColumnWidth(1),
                            3: FlexColumnWidth(1),
                          },
                          border: TableBorder.symmetric(
                            inside: BorderSide(color: Colors.grey[300]!),
                          ),
                          children: [
                            // Header Tabel
                            TableRow(
                              children: [
                                _buildTableCell("Nama Pemain", isHeader: true, alignLeft: true),
                                _buildTableCell("Win", isHeader: true),
                                _buildTableCell("Lose", isHeader: true),
                                _buildTableCell("Rank", isHeader: true),
                              ],
                            ),
                            // Baris Data
                            ...List.generate(10, (index) {
                              return TableRow(
                                children: [
                                  _buildTableCell(
                                    "Pemain ${String.fromCharCode(65 + index)}",
                                    alignLeft: true, 
                                  ),
                                  _buildTableCell("${10 - index}"),
                                  _buildTableCell("$index"),
                                  _buildTableCell("${index + 1}"),
                                ],
                              );
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper untuk membuat sel tabel
  Widget _buildTableCell(String text, {bool isHeader = false, bool alignLeft = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: Text(
        text,
        textAlign: alignLeft ? TextAlign.left : TextAlign.center, 
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          color: const Color.fromARGB(255, 74, 74, 74),
        ),
      ),
    );
  }
}
