import 'package:flutter/material.dart';
import 'package:quizz_app/core/models/question.dart';
import 'package:quizz_app/ui/custom_widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final tickIcon = Icon(Icons.check, color: Colors.green);

  final crossIcon = Icon(Icons.cancel, color: Colors.red);

  int index = 0;

  List<Widget> icons = [];

  List<Question> questions = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// Question Text Widget
              SizedBox(height: 120),

              Center(
                child: Text(
                  questions[index].text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),

              // SizedBox(height: 500),
              Spacer(),

              /// True Button
              CustomButton(
                onPressed: () {
                  if (questions[index].answer == true) {
                    print('Correct answer');
                    icons.add(tickIcon);
                  } else {
                    print('Incorrect answer');
                    icons.add(crossIcon);
                  }
                  index++;
                  // if (index < questions.length - 1) {
                  //   index++;
                  // } else {
                  //   print('Questions Ended');
                  // }
                  setState(() {});
                },
                color: Colors.green,
                text: 'True',
              ),

              SizedBox(height: 20),

              /// False Button
              CustomButton(
                color: Colors.red,
                text: 'False',
                onPressed: () {
                  if (questions[index].answer == false) {
                    print('Correct answer');
                    icons.add(tickIcon);
                  } else {
                    print('Incorrect Question');
                    icons.add(crossIcon);
                  }
                  index++;
                  // if (index < questions.length - 1) {
                  //   index++;
                  // } else {
                  //   print('Questions Ended');
                  // }
                  setState(() {});
                },
              ),

              /// Row of Icons
              Row(children: icons),
            ],
          ),
        ),
      ),
    );
  }
}
