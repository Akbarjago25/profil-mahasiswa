import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showMessage(BuildContext context, String name) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Kamu memilih $name'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => _showMessage(context, 'Instagram'),
          icon: const Icon(Icons.camera_alt),
          color: Colors.pink,
          iconSize: 32,
          tooltip: 'Instagram',
        ),
        IconButton(
          onPressed: () => _showMessage(context, 'LinkedIn'),
          icon: const Icon(Icons.work),
          color: Colors.blue,
          iconSize: 32,
          tooltip: 'LinkedIn',
        ),
        IconButton(
          onPressed: () => _showMessage(context, 'GitHub'),
          icon: const Icon(Icons.code),
          color: Colors.black87,
          iconSize: 32,
          tooltip: 'GitHub',
        ),
      ],
    );
  }
}
