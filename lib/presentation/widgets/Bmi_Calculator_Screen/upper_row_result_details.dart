import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants/app_constants.dart';
import 'custom_gender_card.dart';
import '../Results_Screen/custom_card.dart';

class UpperRowResultDetails extends StatelessWidget {
  const UpperRowResultDetails({
    super.key,
    required this.selectedGender,
    required this.onGenderMaleSelected,
    required this.onGenderFemaleSelected,
  });

  final Gender? selectedGender;
  final VoidCallback onGenderMaleSelected;
  final VoidCallback onGenderFemaleSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ReusableCard(
              onPress: () => onGenderMaleSelected(),
              color: selectedGender == Gender.male
                  ? const Color.fromARGB(255, 55, 56, 80)
                  : kInactiveCardColor,
              cardChild: const GenderCard(
                icon: FontAwesomeIcons.mars,
                label: 'MALE',
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () => onGenderFemaleSelected(),
              color: selectedGender == Gender.female
                  ? const Color.fromARGB(255, 55, 56, 80)
                  : kInactiveCardColor,
              cardChild: const GenderCard(
                icon: FontAwesomeIcons.venus,
                label: 'FEMALE',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
