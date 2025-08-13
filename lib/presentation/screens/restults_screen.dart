import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/app_constants.dart';
import '../widgets/Results_Screen/custom_button.dart';
import '../widgets/Results_Screen/custom_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String gender;
  final int age;
  final int height;
  final int weight;

  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
    required this.gender,
    required this.age,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text('Your Results', style: kTitleTextStyle),
        backgroundColor: kBackgroundColor,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      gender == 'male'
                          ? FontAwesomeIcons.mars
                          : FontAwesomeIcons.venus,
                      size: 50.0,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10.0),
                    Text(gender, style: kInfoValueStyle),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildInfoColumn('Age', age.toString()),
                        _buildInfoColumn('Height', '$height cm'),
                        _buildInfoColumn('Weight', '$weight kg'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: kResultTextStyle),
                  Text(bmiResult, style: kBmiTextStyle),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kInterpretationTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String label, String value) {
    return Column(
      children: [
        Text(label, style: kInfoLabelStyle),
        Text(value, style: kInfoValueStyle),
      ],
    );
  }
}
