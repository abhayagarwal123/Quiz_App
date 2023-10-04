

import 'package:flutter/material.dart';

class result extends StatelessWidget{
final score;
  final List<int>submit;
  final List<Color>bg;
  final List<String>ques;
  result(this.submit,this.ques,this.bg,this.score);
  final ans=[1,1,2,1,2,3,3,3,2,1];
  @override
  Widget build(BuildContext context) {


   return Scaffold(
        body: Stack(
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.purple[800],
                child: Center(
                    child: Image.asset(
                      'assets/images/quiz-logo.png',
                      color: Color.fromARGB(200, 229, 128, 255),
                    ))),
            Column(
              children: [
                SizedBox(height: 100,),
                Expanded(
                    flex: 1,
                    child: Text('You answer $score out of 10 correctly!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),)),
                Expanded(flex: 4,
                  child: Container(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(ques[index],style: TextStyle(fontSize: 25,color:bg[index+1],fontWeight: FontWeight.w500),),
                          )
                          ,
                          Text('correct option : ${ans[index]}',style: TextStyle(fontSize: 25,color: Colors.cyan,fontWeight: FontWeight.w500),),
                          Text('option selected : ${submit[index]}',style: TextStyle(fontSize: 25,color: Colors.deepOrange,fontWeight: FontWeight.w500),),
                          SizedBox(height: 100,),

                        ],
                      );
                    },itemCount: ques.length,),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[500]),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return QuizScreen();
                            },
                          ));
                        }, child: Text('restart quiz?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white))))
              ],
            )
          ],
        )
    );
  }
}
