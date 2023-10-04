import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var i = 0;int j=0;int score=0;
  List<int>submit=[];
  List<Color>bg=[Colors.green];
  @override
  Widget build(BuildContext context) {
    List<String>ques = [
      '1. When building for iOS, Flutter is restricted to an __ compilation strategy',
      '2. How many types of widgets are there in Flutter?',
      '3. Which programming language is used to build Flutter applications?',
      '4. Who developed the Flutter Framework and continues to maintain it today?',
      '5. What is the primary advantage of using Hot Reload in Flutter development?',
      '6. In Flutter, what is the purpose of the setState method?',
      '7. Which Flutter command is used to build a release version of the app for distribution?',
      '8. What is the main function in a Flutter application responsible for?',
      '9. Which widget in Flutter is used to create a scrollable list of widgets with a single scroll direction?',
      '10. Which Flutter widget is used to display a full-screen modal dialog on top of the current screen?'
    ];
    List<List<String>>option = [
      [ 'AOT (ahead-of-time)',
        'JIT (Just-in-time)',
        'Transcompilation',
        'Recompilation'],
      ['2', '4', '6', '8+'],
      ['kotlin', 'dart', 'java', 'go'],
      ['google', 'facebook', 'oracle', 'microsoft'],
      [ 'It improves the apps performance',
        'It allows for real-time code changes without restarting the app',
        'It compiles the app to native code for faster execution',
        'It automatically generates unit tests for your code'],
      ['To set the state of the app to a predefined value',
        'To define the initial state of the app',
        'To rebuild the widget tree and update the UI when the apps state changes ',
        'To toggle between light and dark mode'],
      [ 'flutter debug',
        'flutter build apk',
        'flutter build release',
        'flutter release'],
      [ 'Initializing the apps state',
        'Defining the apps layout',
        'Starting the apps event loop',
        'Handling user interactions'],
      ['Column',
        'ListView',
        'GridView',
        'Stack'],
      ['AlertDialog',
        'SnackBar',
        'BottomSheet',
        'Toast'],

    ];
    final ans=[1,1,2,1,2,3,3,3,2,1];


    void colour(){

      if(j<=10){
        if(
        ans[j]!=submit[j]){
          bg.add(Colors.red);
        }
        else{score++;
          bg.add(Colors.green);
        }
      }

      j++;
    }
    void nextques(var op) {
      submit.add(op);
      setState(() {
        if (i < 9) {
          i++;

          setState(() {

          });
        } else {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return result(submit,ques,bg,score);
            },
          ));
        }
      });
    }

    var text = ques[i];
    return Scaffold(
      body: Stack(children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.purple[800],
            child: Center(
                child: Image.asset(
                  'assets/images/quiz-logo.png',
                  color: Color.fromARGB(145, 229, 128, 255),
                ))),
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  child: ListView(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                Color.fromARGB(110, 229, 128, 255)),
                            onPressed: () {
                              nextques(1);colour();
                            },
                            child: Text(
                              option[i][0],
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                Color.fromARGB(110, 229, 128, 255)),
                            onPressed: () {
                              nextques(2);colour();
                            },
                            child: Text(
                              option[i][1],
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                Color.fromARGB(110, 229, 128, 255)),
                            onPressed: () {
                              nextques(3);colour();
                            },
                            child: Text(
                              option[i][2],
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                Color.fromARGB(110, 229, 128, 255)),
                            onPressed: () {
                              nextques(4);colour();
                            },
                            child: Text(
                              option[i][3],
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ]),
    );
  }
}
