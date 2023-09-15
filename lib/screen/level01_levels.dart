import 'package:flutter/material.dart';
import 'package:test_app/screen/levels_screen.dart';
import 'package:test_app/screen/score_screen.dart';
import '../model/quiz_model.dart';

class Level01Levels extends StatefulWidget {
  Level01Levels({super.key});

  @override
  State<Level01Levels> createState() => _Level01LevelsState();
}

class _Level01LevelsState extends State<Level01Levels> {
  List<QuizModel> QuizData = [
    QuizModel(
        numberQuestion: '1/9',
        image: 'assets/pngtree.png',
        question: 'What is the largest planet in our solar system?',
        answers: {
          'Jupiter': true,
          'Saturn': false,
          'Earth': false,
          'Neptune': false,
        }),
    QuizModel(
        numberQuestion: '2/9',
        image: 'assets/pngtree.png',
        question: 'Which planet is known for its prominent rings?',
        answers: {
          'Jupiter': true,
          'Saturn': false,
          'Earth': false,
          'Neptune': false,
        }),
    QuizModel(
        numberQuestion: '3/9',
        image: 'assets/pngtree.png',
        question: 'Which planet is often referred to as the "Red Planet"?',
        answers: {
          'Jupiter': true,
          'Saturn': false,
          'Earth': false,
          'Neptune': false,
        }),
    QuizModel(
        numberQuestion: '4/9',
        image: 'assets/pngtree.png',
        question: ' What is the hottest planet in our solar system?',
        answers: {
          'Jupiter': true,
          'Saturn': false,
          'Earth': false,
          'Neptune': false,
        }),
    QuizModel(
        numberQuestion: '5/9',
        image: 'assets/pngtree.png',
        question: '',
        answers: {
          'Jupiter': true,
          'Saturn': false,
          'Earth': false,
          'Neptune': false,
        }),
    QuizModel(
        numberQuestion: '6/9',
        image: 'assets/pngtree.png',
        question: ' Which planet has the most moons?',
        answers: {
          'Jupiter': true,
          'Saturn': false,
          'Earth': false,
          'Neptune': false,
        }),
    QuizModel(
        numberQuestion: '7/9',
        image: 'assets/pngtree.png',
        question: 'What is the 6 planet in the solar system',
        answers: {
          'Jupiter': true,
          'Saturn': false,
          'Earth': false,
          'Neptune': false,
        }),
    QuizModel(
        numberQuestion: '8/9',
        image: 'assets/pngtree.png',
        question: 'Which planet is the closest to the Sun?',
        answers: {
          'Jupiter': true,
          'Saturn': false,
          'Earth': false,
          'Neptune': false,
        }),
    QuizModel(
        numberQuestion: '9/9',
        image: 'assets/pngtree.png',
        question: 'Which planet is famous for its Great Red Spot?',
        answers: {
          'Jupiter': true,
          'Saturn': false,
          'Earth': false,
          'Neptune': false,
        }),
  ];

  bool isPressed = false;
  bool answered = false;
  final PageController controller = PageController(initialPage: 0);
  int score = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('isPressed???${isPressed}');
    print('answered???${answered}');
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Level 1',
              style: TextStyle(
                  color: Colors.greenAccent, fontWeight: FontWeight.w700)),
        ),
        backgroundColor: Color(0xff1f1144),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.format_align_center),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xff1f1144),
      body: PageView.builder(
          controller: controller,
          itemCount: QuizData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(QuizData[index].numberQuestion,
                         style: const TextStyle(
                             color: Colors.greenAccent,
                             fontWeight: FontWeight.w700,fontSize:22),),
                     SizedBox.fromSize(size: Size.fromHeight(10)),
                     Text(QuizData[index].question,
                         style: const TextStyle(
                             color: Colors.white, fontWeight: FontWeight.w700)),
                   ],
                 ),
               ),
                Padding(
                  padding: const EdgeInsets.all(35),
                  child: Image(image: AssetImage(QuizData[index].image),
                    ),
                ),
                for (int i = 0; i < QuizData[index].answers.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 35,
                      width: 200,
                      color: isPressed == true
                          ? QuizData[index].answers.values.toList()[i] == true
                              ? Color(0xFF10C586)
                              : Color(0xFF6744FB)
                          : Color(0xFF6744FB),
                      child: MaterialButton(
                        onPressed: answered == false
                            ? () {
                                setState(() {
                                  isPressed = true;
                                  answered = true;
                                  if (QuizData[index]
                                          .answers
                                          .values
                                          .toList()[i] ==
                                      true) {
                                    counter++;
                                  }
                                });
                                print(
                                    QuizData[index].answers.values.toList()[i]);
                              }
                            : null,
                        child: Text(QuizData[index].answers.keys.toList()[i],style:
                        TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            controller.previousPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.bounceInOut);
                          },
                          child: Text('Previous')),
                      ElevatedButton(
                        onPressed: () {
                          if (index == QuizData.length - 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ScoreScreen(score: counter * 10)));
                            print('${counter * 10}');
                          } else {
                            setState(() {
                              isPressed = false;
                              answered = false;
                            });
                            controller.nextPage(
                                duration: Duration(microseconds: 222),
                                curve: Curves.bounceInOut);
                          }
                        },
                        child: Text(
                            index == QuizData.length - 1 ? 'Finish' : 'Next'),
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
