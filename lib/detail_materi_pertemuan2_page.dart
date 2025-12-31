import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailMateriPertemuan2Page extends StatefulWidget {
  const DetailMateriPertemuan2Page({super.key});

  @override
  _DetailMateriPertemuan2PageState createState() => _DetailMateriPertemuan2PageState();
}

class _DetailMateriPertemuan2PageState extends State<DetailMateriPertemuan2Page> {
  int activeTab = 0; // 0 for Lampiran Materi, 1 for Tugas dan Kuis

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB11116),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'DESAIN ANTARMUKA & PENGALAMAN PENGGUNA D4SM-42-03 [ADY]',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Container(
        color: Colors.grey[50], // Very light gray background
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Header Title
              Text(
                'Konsep User Interface Design',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // Description Section
              Container(
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
                child: Text(
                  'User Interface Design (UI Design) mencakup dasar-dasar desain antarmuka yang melibatkan elemen visual dan interaksi. Interaction Design fokus pada bagaimana pengguna berinteraksi dengan sistem. Poin penting dalam UI Design meliputi visibility, yang memastikan informasi penting terlihat jelas; feedback, memberikan respons terhadap tindakan pengguna; limitation, membatasi opsi untuk menghindari kebingungan; dan consistency, menjaga keseragaman elemen di seluruh aplikasi. Prinsip-prinsip ini membantu menciptakan pengalaman pengguna yang intuitif dan efisien.',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 20),
              // Tab Selector
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activeTab = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              'Lampiran Materi',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: activeTab == 0 ? const Color(0xFFB11116) : Colors.grey,
                              ),
                            ),
                          ),
                          if (activeTab == 0)
                            Container(
                              height: 3,
                              width: 120,
                              color: Colors.black,
                            ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activeTab = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              'Tugas dan Kuis',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: activeTab == 1 ? const Color(0xFFB11116) : Colors.grey,
                              ),
                            ),
                          ),
                          if (activeTab == 1)
                            Container(
                              height: 3,
                              width: 100,
                              color: Colors.black,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Content based on active tab
              if (activeTab == 0)
                // Lampiran Materi List
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    final attachments = [
                      {'name': 'Zoom Meeting Syncronous', 'icon': Icons.link, 'checked': true},
                      {'name': 'Elemen-elemen Antarmuka Pengguna', 'icon': Icons.description, 'checked': true},
                      {'name': 'UID Guidelines and Principles', 'icon': Icons.description, 'checked': true},
                      {'name': 'User Profile', 'icon': Icons.description, 'checked': true},
                      {'name': 'Principles of User Interface DesignURL', 'icon': Icons.link, 'checked': true},
                    ];
                    final attachment = attachments[index];
                    return Card(
                      elevation: 2,
                      margin: const EdgeInsets.only(bottom: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Very rounded corners
                      ),
                      child: ListTile(
                        leading: Icon(
                          attachment['icon'] as IconData,
                          color: Colors.grey[600],
                          size: 28,
                        ),
                        title: Text(
                          attachment['name'] as String,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 24,
                        ),
                      ),
                    );
                  },
                )
              else if (activeTab == 1)
                // Tugas dan Kuis content (placeholder for now)
                Container(
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
                  child: Text(
                    'Konten untuk Tugas dan Kuis akan ditampilkan di sini.',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
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
        currentIndex: 1, // Set to 1 since this is accessed from Kelas Saya
        selectedItemColor: const Color(0xFFB11116),
        unselectedItemColor: Colors.white70,
        backgroundColor: const Color(0xFFB11116),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
    );
  }
}