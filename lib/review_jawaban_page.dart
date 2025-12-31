import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tampilan_kuis_review_page.dart';

class ReviewJawabanPage extends StatelessWidget {
  const ReviewJawabanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB11116),
        title: Text(
          'Review Jawaban',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Header Card
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Di Mulai Pada:',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      'Kamis 25 Februari 2021 10:25',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Status:',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      'Selesai',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Selesai Pada:',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      'Kamis 25 Februari 2021 10:40',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Waktu Penyelesaian:',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      '13 Menit 22 Detik',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nilai:',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      '0 / 100',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Scrollable List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: 7,
              itemBuilder: (context, index) {
                int questionNumber = index + 1;
                return Container(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pertanyaan $questionNumber',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Pertanyaan untuk nomor $questionNumber...', // Placeholder question
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Jawaban Tersimpan',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'A. Jenis Kelamin', // Placeholder answer
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TampilanKuisReviewPage()),
                            );
                          },
                          child: Text(
                            'Lihat Soal',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Submit Button
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Back to Quiz Review 1 page with updated score
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF22FF00),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Text(
                'Kirim Jawaban',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}