import 'package:flutter/material.dart';
import 'package:quiz_app/Quizscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(),
        colorScheme:
        ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade300),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.purple[800],
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Container(
                        height: 300,
                        width: 300,
                        child: Image.asset(
                          'assets/images/quiz-logo.png',
                          color: Colors.purpleAccent[100],
                        )),
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      'Learn flutter the fun way!',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.purple[100],
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return QuizScreen();
                        },));
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_forward_rounded,color: Colors.white,)
                            ),
                            Text(
                              'Start quiz',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
