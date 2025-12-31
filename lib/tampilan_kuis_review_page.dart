import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TampilanKuisReviewPage extends StatefulWidget {
  const TampilanKuisReviewPage({super.key});

  @override
  _TampilanKuisReviewPageState createState() => _TampilanKuisReviewPageState();
}

class _TampilanKuisReviewPageState extends State<TampilanKuisReviewPage> {
  int selectedOption = 0; // A selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB11116),
        title: Text(
          'Quiz Review 1',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                const Icon(
                  Icons.timer,
                  color: Colors.white,
                  size: 20,
                ),
                const SizedBox(width: 4),
                Text(
                  '15 : 00',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Question Progress
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: List.generate(15, (index) {
                int questionNumber = index + 1;
                return Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF22FF00), // Bright green for completed
                  ),
                  child: Center(
                    child: Text(
                      '$questionNumber',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            // Question Content
            Text(
              'Soal Nomor 1 / 15',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Radio button dapat digunakan untuk menentukan ?',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            // Answer Options
            ...List.generate(5, (index) {
              String optionLetter = String.fromCharCode(65 + index); // A, B, C, D, E
              String optionText = index == 0 ? 'Jenis Kelamin' : 'Opsi $optionLetter'; // Placeholder
              bool isSelected = index == selectedOption;
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xFFF28B82) : const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: isSelected
                      ? [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(0, 2),
                          ),
                        ]
                      : [],
                ),
                child: Row(
                  children: [
                    Text(
                      '$optionLetter.',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        optionText,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
            const SizedBox(height: 40),
            // Navigation Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Back to Review page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200], // Very light gray
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Subtle rounded
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  elevation: 0, // No shadow for subtle look
                ),
                child: Text(
                  'Kembali Ke Halam Review',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}