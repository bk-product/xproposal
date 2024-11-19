import 'package:flutter/material.dart';

class CaptchaWidget extends StatelessWidget {
  final VoidCallback onRefresh;

  const CaptchaWidget({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              '12345',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              onPressed: onRefresh,
              icon: const Icon(Icons.refresh),
              label: const Text('Refresh'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                // Handle accessibility audio CAPTCHA
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Playing audio CAPTCHA...')),
                );
              },
              icon: const Icon(Icons.volume_up),
              label: const Text('Audio'),
            ),
          ],
        ),
      ],
    );
  }
}
