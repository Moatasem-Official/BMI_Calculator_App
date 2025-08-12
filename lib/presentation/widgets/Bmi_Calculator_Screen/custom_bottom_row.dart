import 'package:flutter/material.dart';
import '../../../constants/app_constants.dart';
import 'custom_measurement_card.dart';
import '../Results_Screen/custom_card.dart';

class CustomBottomRow extends StatelessWidget {
  const CustomBottomRow({
    super.key,
    required this.weight,
    required this.age,
    required this.onWeightChanged,
    required this.onAgeChanged,
  });

  final int weight;
  final int age;
  final ValueChanged<int> onWeightChanged;
  final ValueChanged<int> onAgeChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: MeasurementCard(
                label: 'WEIGHT',
                value: weight,
                onDecrement: () => onWeightChanged(weight - 1),
                onIncrement: () => onWeightChanged(weight + 1),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: MeasurementCard(
                label: 'AGE',
                value: age,
                onDecrement: () => onAgeChanged(age - 1),
                onIncrement: () => onAgeChanged(age + 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
