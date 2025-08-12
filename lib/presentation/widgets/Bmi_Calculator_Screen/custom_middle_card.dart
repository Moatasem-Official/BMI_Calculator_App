import 'package:flutter/material.dart';
import '../../../constants/app_constants.dart';
import '../Results_Screen/custom_card.dart';

class CustomMiddleCard extends StatelessWidget {
  const CustomMiddleCard({
    super.key,
    required this.height,
    required this.onHeightChanged,
  });

  final int height;
  final ValueChanged<double> onHeightChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        color: kActiveCardColor,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('HEIGHT', style: kLabelTextStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(height.toString(), style: kNumberTextStyle),
                const SizedBox(width: 5.0),
                const Text('cm', style: kLabelTextStyle),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white,
                inactiveTrackColor: const Color(0xFF8D8E98),
                thumbColor: const Color(0xFF4C4F5E),
                overlayColor: const Color(0x29EB1555),
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 15.0,
                ),
                overlayShape: const RoundSliderOverlayShape(
                  overlayRadius: 30.0,
                ),
              ),
              child: Slider(
                value: height.toDouble(),
                min: 120.0,
                max: 220.0,
                onChanged: (value) {
                  onHeightChanged(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
