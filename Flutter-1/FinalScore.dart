import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Variable.dart';
import 'package:flutter_application_1/View/HomePage.dart';
import 'package:flutter_application_1/View/Number1.dart';

class FinalScore extends StatefulWidget {
  const FinalScore({Key? key}) : super(key: key);

  @override
  State<FinalScore> createState() => FinalScoreState();
}

class FinalScoreState extends State<FinalScore> {
  TextEditingController nicknameControl = TextEditingController();
  Color? color_input = Colors.black;

  int point = 0;
  var check = [];

  @override
  Widget build(BuildContext context) {
    build_check();
    return Scaffold(
      appBar: AppBar(
        title: build_text(text: "QuitApp", size: 16.0, widght: FontWeight.w200),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              build_text(
                  text: "Mr : $nickname",
                  size: 50.0,
                  widght: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 168, 197)),
              buildHeight(height: 20.0),
              build_text(
                  text: "Result : $point",
                  size: 50.0,
                  widght: FontWeight.bold,
                  color: Colors.black),
              buildHeight(height: 20.0),
              build_button(
                  text: "Exit",
                  size: 20.0,
                  widght: FontWeight.normal,
                  widght_button: 100.0,
                  height_button: 35.0),
              buildHeight(height: 20.0),
              for (var i = 0; i < answer.length; i++)
                Padding(
                  padding: const EdgeInsets.all(11.5),
                  child: Text(
                    "ข้อที่ :  " +
                        (i + 1).toString() +
                        " you " +
                        nickname +
                        " ตอบ : " +
                        income_answer[i] +
                        " เป็นคำตอบที่ : " +
                        check[i] +
                        " เฉลย : " +
                        answer[i],
                    style: TextStyle(color: Color.fromARGB(255, 68, 181, 204)),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  build_text({text, size, widght, color}) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: widght, color: color),
    );
  }

  build_check() {
    for (var i = 0; i < answer.length; i++) {
      if (answer[i] == income_answer[i]) {
        point++;
        check.add("ถูก");
      } else {
        check.add("ผิด");
      }
    }
  }

  build_button({text, size, widght, color, height_button, widght_button}) {
    return Container(
      width: widght_button,
      height: height_button,
      child: ElevatedButton(
        onPressed: () {
          nickname = nicknameControl.text;
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
              (route) => false);
        },
        child: build_text(text: text, size: size, widght: widght, color: color),
      ),
    );
  }

  buildHeight({height}) {
    return SizedBox(
      height: height,
    );
  }
}
