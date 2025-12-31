import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'document_viewer_page.dart';

class DetailMateriPage extends StatefulWidget {
  const DetailMateriPage({super.key});

  @override
  _DetailMateriPageState createState() => _DetailMateriPageState();
}

class _DetailMateriPageState extends State<DetailMateriPage> {
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
                'Pengantar User Interface Design',
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
                  'Antarmuka pengguna harus memperhatikan prinsip desain agar menarik secara visual dan mendukung pengguna dalam berinteraksi dengan aplikasi. Materi ini merupakan review untuk bekal materi User Experience, yang mencakup dasar-dasar desain antarmuka yang efektif dan intuitif.',
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
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    final attachments = [
                      {'name': 'Zoom Meeting Syncronous', 'icon': Icons.link, 'checked': true},
                      {'name': 'Pengantar User Interface Design', 'icon': Icons.description, 'checked': false},
                      {'name': 'Empat Teori Dasar Antarmuka Pengguna', 'icon': Icons.description, 'checked': false},
                      {'name': 'Empat Teori Dasar Antarmuka Pengguna', 'icon': Icons.description, 'checked': true},
                      {'name': 'User Interface Design for Beginner', 'icon': Icons.videocam, 'checked': true},
                      {'name': '20 Prinsip Desain', 'icon': Icons.link, 'checked': true},
                      {'name': 'Best Practice UI Design', 'icon': Icons.link, 'checked': true},
                    ];
                    final attachment = attachments[index];
                    return GestureDetector(
                      onTap: () {
                        if (attachment['icon'] == Icons.description) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DocumentViewerPage()),
                          );
                        }
                      },
                      child: Card(
                        elevation: 2,
                        margin: const EdgeInsets.only(bottom: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
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
                            (attachment['checked'] as bool) ? Icons.check_circle : Icons.radio_button_unchecked,
                            color: (attachment['checked'] as bool) ? Colors.green : Colors.grey,
                            size: 24,
                          ),
                        ),
                      ),
                    );
                  },
                )
              else if (activeTab == 1)
                // Tugas dan Kuis Empty State
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          Icons.sentiment_satisfied,
                          size: 100,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Tidak Ada Tugas Dan Kuis Hari Ini',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
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