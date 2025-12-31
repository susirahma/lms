import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PengerjaanKuisPage extends StatefulWidget {
  const PengerjaanKuisPage({super.key});

  @override
  _PengerjaanKuisPageState createState() => _PengerjaanKuisPageState();
}

class _PengerjaanKuisPageState extends State<PengerjaanKuisPage> {
  int currentQuestion = 1;
  int selectedOption = 0; // 0 for A, 1 for B, etc.

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
            // Question Navigation
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: List.generate(15, (index) {
                int questionNumber = index + 1;
                bool isActive = questionNumber == currentQuestion;
                return Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isActive ? Colors.black : Colors.grey,
                      width: isActive ? 3 : 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '$questionNumber',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: isActive ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            // Question Content
            Text(
              'Soal Nomor $currentQuestion / 15',
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
              bool isSelected = index == selectedOption;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedOption = index;
                  });
                },
                child: Container(
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
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Opsi $optionLetter', // Placeholder text
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigate to next question or submit
        },
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.black,
        label: Text(
          'Soal Selanjutnya',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}