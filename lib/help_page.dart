import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  String selectedLanguage = 'ID';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFB71C1C),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Language Selector
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLanguage = 'ID';
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        'ID',
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      if (selectedLanguage == 'ID')
                        Container(
                          height: 2,
                          width: 30,
                          color: const Color(0xFFB71C1C),
                        ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLanguage = 'EN';
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        'EN',
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      if (selectedLanguage == 'EN')
                        Container(
                          height: 2,
                          width: 30,
                          color: const Color(0xFFB71C1C),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Content
            Text(
              'Akses hanya untuk Dosen dan Mahasiswa Telkom University.',
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'Detail format login Microsoft Office 365:',
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Username (Akun iGracias) + \'@365.telkomuniversity.ac.id\'',
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'Informasi mengenai kewajiban \'Strong Password\' di iGracias.',
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            const SizedBox(height: 30),
            // Contact
            Text(
              'Contact:',
              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: infoceloe@telkomuniversity.ac.id',
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            Text(
              'WhatsApp: +62 821-1666-3563',
              style: GoogleFonts.poppins(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}