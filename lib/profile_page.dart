import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              color: const Color(0xFFB11116),
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                    ),
                    child: const CircleAvatar(
                      radius: 56,
                      backgroundImage: NetworkImage('https://via.placeholder.com/112x112?text=Profile'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'DANDY CANDRA PRATAMA',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Tab Bar
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
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
              child: TabBar(
                controller: _tabController,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0, color: Color(0xFFB11116)),
                ),
                labelColor: const Color(0xFFB11116),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    child: Text(
                      'About Me',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Kelas',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Edit Profile',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Tab Content
            SizedBox(
              height: 400, // Adjust height as needed
              child: TabBarView(
                controller: _tabController,
                children: [
                  // About Me Tab
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email address',
                          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'dandy.candra@365.telkomuniversity.ac.id',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Program Studi',
                          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'D4 Teknologi Rekayasa Multimedia',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Fakultas',
                          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'FIT',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'Aktivitas Login',
                          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'First access',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            Text(
                              '26 Feb 2024, 08:00',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Last access',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            Text(
                              '30 Dec 2024, 14:00',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Kelas Tab
                  const Center(child: Text('Kelas Content')),
                  // Edit Profile Tab
                  const Center(child: Text('Edit Profile Content')),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Logout logic
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        },
        backgroundColor: const Color(0xFFB11116),
        child: const Icon(Icons.exit_to_app),
      ),
    );
  }
}