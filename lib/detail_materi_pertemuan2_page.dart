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
                  'Konsep User Interface Design mencakup dasar-dasar desain antarmuka yang efektif. Interaction Design menekankan bagaimana pengguna berinteraksi dengan sistem digital. Poin penting meliputi visibility untuk memastikan informasi penting terlihat jelas, feedback yang memberikan respons langsung terhadap aksi pengguna, limitation untuk membatasi pilihan dan menghindari kebingungan, consistency dalam menjaga keseragaman elemen, serta affordance yang menunjukkan fungsi objek melalui desainnya.',
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
                // Tugas dan Kuis List
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    final tasks = [
                      {
                        'type': 'QUIZ',
                        'title': 'Quiz Review 01',
                        'description': 'Kerjakan quiz ini dalam waktu 15 menit.',
                        'deadline': '26 Februari 2021 23:59 WIB',
                        'checked': true,
                        'icon': Icons.quiz,
                      },
                      {
                        'type': 'TUGAS',
                        'title': 'Tugas 01 - UID Android Mobile Game',
                        'description': 'Buat desain tampilan untuk game FPS Android Mobile.',
                        'deadline': '',
                        'checked': false,
                        'icon': Icons.assignment,
                      },
                    ];
                    final task = tasks[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border(
                          left: BorderSide(
                            color: Colors.grey,
                            width: 4,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  task['icon'] as IconData,
                                  color: Colors.grey[600],
                                  size: 24,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  task['type'] as String,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  (task['checked'] as bool) ? Icons.check_circle : Icons.radio_button_unchecked,
                                  color: (task['checked'] as bool) ? Colors.green : Colors.grey,
                                  size: 24,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              task['title'] as String,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              task['description'] as String,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            if (task['deadline'] != '')
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  'Tenggat Waktu: ${task['deadline']}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.red,
                                  ),
                                ),
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