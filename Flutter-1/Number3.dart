import 'package:flutter/material.dart';
import 'package:flutter_application_1/Variable.dart';
import 'package:flutter_application_1/View/Number4.dart';

class Number3 extends StatefulWidget {
  const Number3({Key? key}) : super(key: key);

  @override
  State<Number3> createState() => _Number3State();
}

class _Number3State extends State<Number3> {
  String? answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Question1")),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildProgress(),
            buildText(
                text: "3. คำถามข้อที่ 3", size: 22.0, weight: FontWeight.bold),
            buildRadio(text: "ตอบ A", value: "A"),
            buildRadio(text: "ตอบ B", value: "B"),
            buildRadio(text: "ตอบ C", value: "C"),
            buildRadio(text: "ตอบ D", value: "D"),
            buildButton(text: "Next", heightButton: 50.0, widthButton: 100.0)
          ],
        ),
      ),
    );
  }

  buildText({text, size, weight, color}) {
    return Text(text,
        style: TextStyle(fontSize: size, fontWeight: weight, color: color));
  }

  buildProgress() {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.all(20.0),
      child: LinearProgressIndicator(
        value: 0.6,
        valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
        backgroundColor: Colors.grey,
      ),
    );
  }

  buildRadio({text, value}) {
    return ListTile(
      title: buildText(text: text, size: 20.0),
      leading: Radio<String?>(
        value: value,
        groupValue: answer,
        onChanged: (val) {
          setState(() {
            answer = val;
          });
        },
      ),
    );
  }

  buildButton({text, heightButton, widthButton}) {
    return Center(
      child: Container(
        width: widthButton,
        height: heightButton,
        child: ElevatedButton(
          onPressed: () {
            if (answer != "") {
              income_answer.add(answer);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Number4()),
                  (route) => false);
            }
          },
          child: buildText(text: text, size: 15.0),
        ),
      ),
    );
  }
}
