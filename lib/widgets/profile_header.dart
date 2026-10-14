import 'package:flutter/material.dart';
import 'profile_photo.dart';
import 'profile_info.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ProfilePhoto(radius: 60),
        SizedBox(height: 16),
        ProfileInfo(
          name: 'Akbar Surya Rozaktana',
          nim: '25.11.6564',
          programStudi: 'S1 Informatika',
          email: 'a.surya@students.amikom.ac.id',
          lokasi: 'Yogyakarta, Indonesia',
        ),
      ],
    );
  }
}