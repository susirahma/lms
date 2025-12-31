import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_page.dart';
import 'pengumuman_page.dart';
import 'tampilan_page_tugas.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB11116),
        title: Row(
          children: [
            Expanded(
              child: Text(
                'Hallo, DANDY CANDRA PRATAMA',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage('https://via.placeholder.com/32x32?text=P'),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'MAHASISWA',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFB11116),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Upcoming Tasks
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TampilanPageTugas()),
                );
              },
              child: Card(
                color: const Color(0xFFB11116),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tugas Yang Akan Datang',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'DESAIN ANTARMUKA & PENGALAMAN PENGGUNA',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        'Tugas 01 - UID Android Mobile Game',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        'Jumat 26 Februari, 23:59 WIB',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Announcements
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pengumuman Terakhir',
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PengumumanPage()),
                    );
                  },
                  child: Text(
                    'Lihat Semua',
                    style: GoogleFonts.poppins(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/400x100?text=Pengumuman'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Class Progress
            Text(
              'Progres Kelas',
              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                final courses = [
                  {'name': 'DESAIN ANTARMUKA', 'progress': 0.85, 'icon': Icons.design_services},
                  {'name': 'KEWARGANEGARAAN', 'progress': 0.89, 'icon': Icons.flag},
                  {'name': 'SISTEM OPERASI', 'progress': 0.90, 'icon': Icons.computer},
                ];
                final course = courses[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey.shade300,
                      child: Icon(course['icon'] as IconData),
                    ),
                    title: Text(
                      course['name'] as String,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}