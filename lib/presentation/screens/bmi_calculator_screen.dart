import 'package:flutter/material.dart';
import '../../constants/app_constants.dart';
import '../widgets/Bmi_Calculator_Screen/custom_bottom_row.dart';
import '../widgets/Bmi_Calculator_Screen/custom_middle_card.dart';
import '../widgets/Bmi_Calculator_Screen/custon_calculate_button.dart';
import '../widgets/Bmi_Calculator_Screen/upper_row_result_details.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({super.key});

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF0A0E21),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UpperRowResultDetails(
            selectedGender: selectedGender,
            onGenderMaleSelected: () {
              setState(() {
                selectedGender = Gender.male;
              });
            },
            onGenderFemaleSelected: () {
              setState(() {
                selectedGender = Gender.female;
              });
            },
          ),
          CustomMiddleCard(
            height: height,
            onHeightChanged: (value) {
              setState(() {
                height = value.round();
              });
            },
          ),
          CustomBottomRow(
            weight: weight,
            age: age,
            onWeightChanged: (newWeight) {
              setState(() {
                weight = newWeight;
              });
            },
            onAgeChanged: (newAge) {
              setState(() {
                age = newAge;
              });
            },
          ),
          CustomCalculateButton(
            selectedGender: selectedGender,
            height: height,
            weight: weight,
            age: age,
          ),
        ],
      ),
    );
  }
}
