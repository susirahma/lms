import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_materi_page.dart';

class DashboardMateriPage extends StatefulWidget {
  const DashboardMateriPage({super.key});

  @override
  _DashboardMateriPageState createState() => _DashboardMateriPageState();
}

class _DashboardMateriPageState extends State<DashboardMateriPage> {
  int activeTab = 0;

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
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
                            'Materi',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: activeTab == 0 ? const Color(0xFFB11116) : Colors.grey,
                            ),
                          ),
                        ),
                        if (activeTab == 0)
                          Container(
                            height: 3,
                            width: 60,
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
                            'Tugas Dan Kuis',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: activeTab == 1 ? const Color(0xFFB11116) : Colors.grey,
                            ),
                          ),
                        ),
                        if (activeTab == 1)
                          Container(
                            height: 3,
                            width: 120,
                            color: Colors.black,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Content
            if (activeTab == 0)
              // Materi List
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  final meetings = [
                    {'meeting': 'Pertemuan 1', 'title': '01 - Pengantar User Interface Design', 'details': '3 URLs, 2 Files, 3 Interactive Content', 'completed': true},
                    {'meeting': 'Pertemuan 2', 'title': '02 - Prinsip Desain UI', 'details': '2 URLs, 1 File, 2 Interactive Content', 'completed': true},
                    {'meeting': 'Pertemuan 3', 'title': '03 - Wireframing dan Prototyping', 'details': '4 URLs, 3 Files, 1 Interactive Content', 'completed': false},
                    {'meeting': 'Pertemuan 4', 'title': '04 - User Research', 'details': '1 URL, 2 Files, 4 Interactive Content', 'completed': false},
                    {'meeting': 'Pertemuan 5', 'title': '05 - Testing dan Iterasi', 'details': '2 URLs, 1 File, 2 Interactive Content', 'completed': false},
                  ];
                  final meeting = meetings[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DetailMateriPage()),
                      );
                    },
                    child: Card(
                      elevation: 2,
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlue.shade100,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    meeting['meeting'] as String,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  meeting['title'] as String,
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  meeting['details'] as String,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Icon(
                                Icons.check_circle,
                                color: (meeting['completed'] as bool) ? Colors.green : Colors.grey,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            else if (activeTab == 1)
              // Tugas Dan Kuis Tab
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  final tasks = [
                    {'category': 'QUIZ', 'title': 'Quiz Review 01', 'deadline': '26 Februari 2021 23:59 WIB', 'completed': true, 'icon': Icons.quiz},
                    {'category': 'Tugas', 'title': 'Tugas 01 - UID Android Mobile Game', 'deadline': '26 Februari 2021 23:59 WIB', 'completed': false, 'icon': Icons.assignment},
                    {'category': 'Pertemuan 3', 'title': 'Latihan Wireframing', 'deadline': '25 Februari 2021 23:59 WIB', 'completed': true, 'icon': Icons.work},
                    {'category': 'QUIZ', 'title': 'Quiz Prinsip Desain', 'deadline': '24 Februari 2021 23:59 WIB', 'completed': false, 'icon': Icons.quiz},
                    {'category': 'Tugas', 'title': 'Tugas 02 - Prototyping App', 'deadline': '23 Februari 2021 23:59 WIB', 'completed': false, 'icon': Icons.assignment},
                  ];
                  final task = tasks[index];
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue.shade100,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  task['category'] as String,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Icon(
                                    task['icon'] as IconData,
                                    size: 24,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Text(
                                      task['title'] as String,
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Tenggat Waktu : ${task['deadline']}',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Icon(
                              (task['completed'] as bool) ? Icons.check_circle : Icons.radio_button_unchecked,
                              color: (task['completed'] as bool) ? Colors.green : Colors.grey,
                              size: 24,
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