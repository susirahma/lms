import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  String selectedLanguage = 'ID';

  final Map<String, Map<String, String>> texts = {
    'ID': {
      'header': 'Akses hanya untuk Dosen dan Mahasiswa Telkom University.',
      'instruction': 'Login menggunakan Akun Microsoft Office 365 dengan format sebagai berikut:',
      'username': 'Username (Akun iGracias) ditambahkan "@365.telkomuniversity.ac.id"',
      'password': 'Password (Akun iGracias) pada kolom Password.',
      'warning': 'Kegagalan autentikasi kemungkinan karena belum mengubah password menjadi \'Strong Password\'. Pastikan untuk mengubah Password hanya di iGracias.',
      'footer': 'Untuk informasi lebih lanjut, silakan hubungi CeLOE Service Helpdesk:',
      'email': 'Email: infoceloe@telkomuniversity.ac.id',
      'whatsapp': 'WhatsApp: +62 821-1666-3563',
    },
    'EN': {
      'header': 'Access restricted only for Lecturer and Student of Telkom University.',
      'instruction': 'Login only using your Microsoft Office 365 Account by following these format:',
      'username': 'Username (iGracias Account) followed with "@365.telkomuniversity.ac.id"',
      'password': 'Password (SSO / iGracias Account) on Password Field.',
      'warning': 'Failure upon Authentication could be possibly you have not yet change your password into \'Strong Password\'. Make sure to change your Password only in iGracias.',
      'footer': 'For further Information, please contact CeLOE Service Helpdesk:',
      'email': 'Email: infoceloe@telkomuniversity.ac.id',
      'whatsapp': 'WhatsApp: +62 821-1666-3563',
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFB11116),
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
                      Image.network(
                        'https://flagcdn.com/w320/id.png',
                        width: 50,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'ID',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      if (selectedLanguage == 'ID')
                        Container(
                          height: 3,
                          width: 50,
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
                      Image.network(
                        'https://flagcdn.com/w320/gb.png',
                        width: 50,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'EN',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      if (selectedLanguage == 'EN')
                        Container(
                          height: 3,
                          width: 50,
                          color: const Color(0xFFB11116),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Content
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: Column(
                key: ValueKey<String>(selectedLanguage),
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    texts[selectedLanguage]!['header']!,
                    style: GoogleFonts.poppins(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    texts[selectedLanguage]!['instruction']!,
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    texts[selectedLanguage]!['username']!,
                    style: GoogleFonts.poppins(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    texts[selectedLanguage]!['password']!,
                    style: GoogleFonts.poppins(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                  if (selectedLanguage == 'EN' && texts[selectedLanguage]!['warning'] != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        texts[selectedLanguage]!['warning']!,
                        style: GoogleFonts.poppins(fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  const SizedBox(height: 30),
                  // Contact
                  Text(
                    texts[selectedLanguage]!['footer']!,
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    texts[selectedLanguage]!['email']!,
                    style: GoogleFonts.poppins(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    texts[selectedLanguage]!['whatsapp']!,
                    style: GoogleFonts.poppins(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}