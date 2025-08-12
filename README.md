# BMI Calculator App

A modern and user-friendly BMI (Body Mass Index) Calculator built with Flutter.

## Features

- Enter your height (cm) and weight (kg)
- Instantly calculate your BMI
- Get a clear health category (Underweight, Normal, Overweight)
- Simple, attractive, and responsive UI
- Supports both Android, iOS, Web, Windows, macOS, and Linux

## How It Works

1. Select your gender.
2. Enter your height and weight.
3. Adjust your age if needed.
4. Tap "Calculate" to see your BMI and health interpretation.

## Example

BMI calculation is handled by the [`BmiCalculations`](lib/helpers/bmi_calculations.dart) class:

```dart
final bmi = BmiCalculations(height: 180, weight: 75);
print(bmi.getBMI()); // 23.1
print(bmi.getResult()); // Normal
print(bmi.getInterpretation()); // You have a normal body weight. Good job!
```

## Project Structure

- Main entry: [`lib/main.dart`](lib/main.dart)
- BMI logic: [`lib/helpers/bmi_calculations.dart`](lib/helpers/bmi_calculations.dart)
- Main screen: [`lib/presentation/screens/bmi_calculator_screen.dart`](lib/presentation/screens/bmi_calculator_screen.dart)
- Results screen: [`lib/presentation/screens/restults_screen.dart`](lib/presentation/screens/restults_screen.dart)

## Getting Started

1. Install [Flutter](https://flutter.dev/docs/get-started/install)
2. Clone this repo:
    ```
    git clone https://github.com/your-username/bmi_calculator_app.git
    ```
3. Get dependencies:
    ```
    flutter pub get
    ```
4. Run the app:
    ```
    flutter run
    ```

## License

This project is licensed under the MIT