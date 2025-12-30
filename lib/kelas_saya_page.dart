import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard_materi_page.dart';

class KelasSayaPage extends StatelessWidget {
  const KelasSayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Kelas Saya',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Progres Kelas',
              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                final courses = [
                  {'name': 'DESAIN ANTARMUKA', 'code': 'D4SM-42-03 [ADY]', 'progress': 0.85, 'year': '2021/2'},
                  {'name': 'KEWARGANEGARAAN', 'code': 'D4SM-42-KWN [ARS]', 'progress': 0.89, 'year': '2021/2'},
                  {'name': 'SISTEM OPERASI', 'code': 'D4SM-42-SOP [ARS]', 'progress': 0.90, 'year': '2021/2'},
                  {'name': 'ALGORITMA DAN PEMROGRAMAN', 'code': 'D4SM-42-ALP [ARS]', 'progress': 0.75, 'year': '2021/2'},
                  {'name': 'BASIS DATA', 'code': 'D4SM-42-BDT [ARS]', 'progress': 0.80, 'year': '2021/2'},
                ];
                final course = courses[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DashboardMateriPage()),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey.shade300,
                        child: const Icon(Icons.book),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course['year'] as String,
                            style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            course['name'] as String,
                            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            course['code'] as String,
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: course['progress'] as double,
                            backgroundColor: Colors.grey.shade300,
                            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFB11116)),
                          ),
                          Text(
                            '${((course['progress'] as double) * 100).toInt()} % Selesai',
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}