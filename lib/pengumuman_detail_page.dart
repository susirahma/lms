import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PengumumanDetailPage extends StatelessWidget {
  const PengumumanDetailPage({super.key});

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
          'Pengumuman',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Maintenance Pra UAS Semester Genap 2020/2021',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Author Info
            Row(
              children: [
                const CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage('https://via.placeholder.com/32x32?text=A'),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'By Admin Celoe',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    Text(
                      'Rabu, 2 Juni 2021, 10:45',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Banner Image
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/400x200?text=Maintenance+LMS'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Sub-title
            Center(
              child: Text(
                'Maintenance LMS',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Content
            Text(
              'Diinformasikan kepada seluruh pengguna LMS, kami dari tim CeLOE akan melakukan maintenance pada tanggal 12 Juni 2021 pukul 22.00 WIB hingga 13 Juni 2021 pukul 06.00 WIB.',
              style: GoogleFonts.poppins(fontSize: 16, height: 1.6),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16),
            Text(
              'Selama masa maintenance, sistem LMS akan tidak dapat diakses untuk sementara waktu. Kami mohon maaf atas ketidaknyamanan yang timbul.',
              style: GoogleFonts.poppins(fontSize: 16, height: 1.6),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16),
            Text(
              'Untuk informasi lebih lanjut, silakan hubungi tim support CeLOE melalui email infoceloe@telkomuniversity.ac.id atau WhatsApp di +62 821-1666-3563.',
              style: GoogleFonts.poppins(fontSize: 16, height: 1.6),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),
            // Closing
            Text(
              'Hormat Kami,\nCeLOE Telkom University',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Kelas Saya',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
        ],
        currentIndex: 0, // Set to 0 since this is accessed from Pengumuman
        selectedItemColor: const Color(0xFFB11116),
        unselectedItemColor: Colors.white70,
        backgroundColor: const Color(0xFFB11116),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
    );
  }
}