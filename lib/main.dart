import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var computerChoice = "";
  var yourChoice = "";

  var yourScore = 0;
  var computerScore = 0;

  var message ="";

  var winner = "";



  @override
  Widget build(BuildContext context) {


    var r = new Random();
    var computerRandomInt = r.nextInt(3)+1;


    if(computerRandomInt == 1) {
      computerChoice = "pic_rock";
    }

    if (computerRandomInt == 2) {
      computerChoice = "pic_paper";
    }

    if (computerRandomInt == 3) {
      computerChoice = "pic_scissors";
    }


    if(computerChoice == "pic_rock") {
      Image.asset("assets/images/$computerChoice.png");
    }
    if(computerChoice == "pic_paper") {
      Image.asset("assets/images/$computerChoice.png");
    }  if(computerChoice == "pic_scissors") {
      Image.asset("assets/images/$computerChoice.png");
    }


    if(yourChoice == "pic_rock") {
      setState(() {
        Image.asset("assets/images/$yourChoice.png");
      });

    }
    if(yourChoice == "pic_paper") {
      setState(() {
        Image.asset("assets/images/$yourChoice.png");

      });

    }  if(yourChoice == "pic_scissors") {
      setState(() {
        Image.asset("assets/images/$yourChoice.png");
      });

    }



    if(computerChoice == "pic_rock" && yourChoice == "pic_paper") {
      yourScore++;
      message = "Paper Catches Rock. You win";
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 16.0
      );

    } else if(computerChoice == "pic_rock" && yourChoice == "pic_rock") {
          message = "Draw!";
          Fluttertoast.showToast(
              msg: message,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.blueGrey,
              textColor: Colors.white,
              fontSize: 16.0
          );

    } else if(computerChoice == "pic_rock" && yourChoice == "pic_scissors") {
        computerScore++;
        message = "Rock Destroy Scissors. Computer wins";
        Fluttertoast.showToast(
            msg: message,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blueGrey,
            textColor: Colors.white,
            fontSize: 16.0
        );
    }  else if(computerChoice == "pic_paper" && yourChoice == "pic_paper") {
          message = "Draw!";
          Fluttertoast.showToast(
              msg: message,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.blueGrey,
              textColor: Colors.white,
              fontSize: 16.0
          );
    }
    else if(computerChoice == "pic_paper" && yourChoice == "pic_rock") {
      computerScore++;
      message = "Paper Catches Rock. Computer wins";
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    else if(computerChoice == "pic_paper" && yourChoice == "pic_scissors") {
      yourScore++;
      message = "Scissors cut Paper. You win";
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    else if(computerChoice == "pic_scissors" && yourChoice == "pic_scissors") {
       message = "Draw!";
       Fluttertoast.showToast(
           msg: message,
           toastLength: Toast.LENGTH_SHORT,
           gravity: ToastGravity.BOTTOM,
           timeInSecForIosWeb: 1,
           backgroundColor: Colors.blueGrey,
           textColor: Colors.white,
           fontSize: 16.0
       );
    }
    else if(computerChoice == "pic_scissors" && yourChoice == "pic_paper") {
      computerScore++;
      message = "Scissors cut Paper. Computer wins";
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }  else if(computerChoice == "pic_scissors" && yourChoice == "pic_rock") {
      yourScore++;
      message = "Rock Destroy Scissors. You win";
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }


    // Winner Selection

    if(computerScore == 20 &&  yourScore < 20) {
      winner = "Computer Won The Game!...";
      Fluttertoast.showToast(
          msg: winner,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.redAccent,
          textColor: Colors.white,
          fontSize: 20.0
      );
      yourScore = 0;
      computerScore = 0;

    } else if(yourScore == 20 && computerScore < 20) {
      winner = "Congratulations.You Won The Game!...";
      Fluttertoast.showToast(
          msg: winner,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 20.0
      );
      yourScore = 0;
      computerScore = 0;
    }










    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Rock Paper Scissors Game'),
              backgroundColor: Color.fromARGB(230, 10, 10, 10),
            ),
            body: Container(
              color: Colors.blueGrey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Card(
                            color: Colors.black87,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Center(
                                  child: Text(
                                    "Human Choice",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 155,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white30,
                                  ),
                                  child: Image.asset(
                                    "assets/images/$yourChoice.png",
                                    height: 70,
                                    width: 70,
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Center(
                                  child: Text(
                                    "Computer Choice",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 155,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white30,
                                  ),
                                  child: Image.asset(
                                    "assets/images/$computerChoice.png",
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                SizedBox(height: 11,),
                                Container(
                                  padding: EdgeInsets.all(4.0),
                                  height: 50,
                                  width: 185,
                                  decoration: BoxDecoration(
                                    color: Colors.black26,
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: <Widget>[
                                        Text("Your Score:  "+yourScore.toString(), textAlign: TextAlign.end, style: TextStyle(color: Colors.greenAccent,fontSize: 16),),
                                        Text("Computer Score:  "+computerScore.toString(), textAlign: TextAlign.end, style: TextStyle(color: Colors.redAccent,fontSize: 16),),
                                      ],
                                    ),
                                  ),
                                ),


                                Expanded(
                                  child: Container(
                                      padding: EdgeInsets.all(2.0),
                                      width: 350,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Colors.white12,
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {

                                                  yourChoice = "pic_rock";
                                                  Image.asset("assets/images/$yourChoice.png");

                                                  Image.asset("assets/images/$computerChoice.png");


                                                });
                                              },
                                              child: Card(
                                                child: Image.asset(
                                                  "assets/images/rock.png",
                                                  height: 70,
                                                  width: 70,
                                                ),
                                                color: Colors.black12,
                                                elevation: 4,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20,),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {

                                                  yourChoice = "pic_paper";
                                                  Image.asset("assets/images/$yourChoice.png");

                                                  Image.asset("assets/images/$computerChoice.png");

                                                });
                                              },
                                              child: Card(
                                                child: Image.asset(
                                                  "assets/images/paper.png",
                                                  height: 70,
                                                  width: 70,
                                                ),
                                                color: Colors.black12,
                                                elevation: 4,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20,),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {

                                                  yourChoice = "pic_scissors";
                                                  Image.asset("assets/images/$yourChoice.png");

                                                  Image.asset("assets/images/$computerChoice.png");


                                                });
                                              },
                                              child: Card(
                                                child: Image.asset(
                                                  "assets/images/scissors.png",
                                                  height: 70,
                                                  width: 70,
                                                ),
                                                color: Colors.black12,
                                                elevation: 4,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )

                                  ),
                                )





                              ],
                            ),

                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            )
        )
    );
  }
}



