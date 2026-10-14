import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/action_buttons.dart';
import '../widgets/social_media_row.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Header profil menggunakan Expanded
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Center(
                  child: const ProfileHeader(),
                ),
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Media Sosial',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SocialMediaRow(),

            const SizedBox(height: 12),

            // Tombol aksi menggunakan Flexible
            Flexible(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ActionButtons(),

                    const SizedBox(height: 8),

                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AboutScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.info_outline),
                      label: const Text('Tentang Aplikasi'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}