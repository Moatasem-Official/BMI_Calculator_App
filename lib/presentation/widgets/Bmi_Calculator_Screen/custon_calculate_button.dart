import 'package:flutter/material.dart';
import '../../../constants/app_constants.dart';
import '../../../helpers/bmi_calculations.dart';
import '../../screens/restults_screen.dart';

class CustomCalculateButton extends StatelessWidget {
  const CustomCalculateButton({
    super.key,
    required this.selectedGender,
    required this.height,
    required this.weight,
    required this.age,
  });

  final Gender? selectedGender;
  final int height;
  final int weight;
  final int age;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,

      onTap: () {
        if (selectedGender == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Please select a gender.')),
          );
          return;
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultsPage(
              bmiResult: BmiCalculations(
                height: height,
                weight: weight,
              ).getBMI(),
              resultText: BmiCalculations(
                height: height,
                weight: weight,
              ).getResult(),
              interpretation: BmiCalculations(
                height: height,
                weight: weight,
              ).getInterpretation(),
              age: age,
              height: height,
              weight: weight,
              gender: selectedGender?.name ?? 'Not specified',
            ),
          ),
        );
      },
      child: Container(
        color: kInactiveCardColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        child: const Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
