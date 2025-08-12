import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants/app_constants.dart';
import 'custom_round_icon_button.dart';

class MeasurementCard extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const MeasurementCard({
    super.key,
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label, style: kLabelTextStyle),
        Text(value.toString(), style: kNumberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: onDecrement,
            ),
            const SizedBox(width: 10.0),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: onIncrement,
            ),
          ],
        ),
      ],
    );
  }
}
