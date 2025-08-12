import 'package:flutter/material.dart';
import '../../../constants/app_constants.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const GenderCard({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0, color: Colors.white),
        const SizedBox(height: 15.0),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
