

import 'package:flutter/material.dart';

class result extends StatelessWidget{

  final List<int>submit;
  final List<Color>bg;
  final List<String>ques;
  result(this.submit,this.ques,this.bg,);
  final ans=[1,1,2,1,2,3,3,3,2,1];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: Stack(
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
                child: Center(
                    child: Image.asset(
                      'assets/images/quiz-logo.png',
                      color: Color.fromARGB(200, 229, 128, 255),
                    ))),
            ListView.builder(itemBuilder: (context, index) {
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
            },itemCount: ques.length,)
          ],
        )
    );
  }
}