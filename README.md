Flutter Basic Calculator
A clean and functional cross-platform mobile application built with Flutter. This project demonstrates basic state management, user input handling, and arithmetic logic in a mobile environment.

<img width="1080" height="2166" alt="image" src="https://github.com/user-attachments/assets/e7e2c5b3-2e69-4d6a-8f7a-93fcc4af23d0" />

✨ Features
- Arithmetic Operations: Support for addition, subtraction, multiplication, and division.
- Dynamic Updates: The result is calculated and displayed instantly upon pressing an operation button.
- Clear Functionality: A dedicated "Clear" button to reset the input fields and the result text.
- Input Validation: Uses two numeric text fields to capture user data securely.
- Responsive UI: Built using Material Design's ElevatedButton and TextField widgets for a modern look and feel.

🛠️ Technical Stack
- Framework: Flutter
- Language: Dart
- UI Components: Material Design (ElevatedButtons, TextFields, Column/Row Layouts)

📸 Preview
The application features a simple vertical layout:
1. Input Section: Two text fields for number entry.
2. Operations Section: A grid or row of 4 buttons (+, -, *, /).
3. Display Section: A dynamic text area showing the calculated result.
4. Action Section: A clear button to refresh the state.

🚀 Getting Started
Prerequisites
- Flutter SDK installed on your machine.
- Android Studio, VS Code, or another IDE with Flutter plugins.

Installation
1. Clone the repository:
  git clone https://github.com/[Your-Username]/Flutter-Basic-Calculator.git

2. Navigate to the project directory:
  cd Flutter-Basic-Calculator

3. Install dependencies:
  flutter pub get

4. Run the application:
  flutter run


📂 Code Logic Highlights
  The app utilizes TextEditingController to retrieve values from the inputs and setState() to update the UI dynamically.
  Dart
  // Example logic for addition
  void add() {
    setState(() {
      double num1 = double.parse(controller1.text);
      double num2 = double.parse(controller2.text);
      result = (num1 + num2).toString();
    });
  }

📜 License
  This project is open-source and available under the MIT License.

Author
- Yash Ganpat Pale
- Focused on building efficient and user-friendly mobile solutions.
