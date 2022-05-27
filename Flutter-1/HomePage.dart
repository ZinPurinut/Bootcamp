import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Variable.dart';
import 'package:flutter_application_1/View/Number1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  TextEditingController nickname1 = TextEditingController();
  Color? colorInput = Color.fromARGB(255, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: buildText(text: "AppQuiz", size: 18.0, weight: FontWeight.w700),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildText(
                  text: "กรุณากรอกชื่อเล่น",
                  size: 20.0,
                  weight: FontWeight.bold,
                  color: Colors.brown[500]),
              buildInput(text: "ชื่อเล่น", color: colorInput),
              buildHeight(height: 20.0),
              buildButton(
                  text: "START",
                  size: 12.0,
                  weight: FontWeight.normal,
                  widthButton: 100.0,
                  heightButton: 50.0),
            ],
          ),
        ),
      ),
    );
  }

  buildText({text, size, weight, color}) {
    return Text(text,
        style: TextStyle(fontSize: size, fontWeight: weight, color: color));
  }

  buildInput({text, color}) {
    return TextFormField(
      controller: nickname1,
      decoration: InputDecoration(
          labelText: text,
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: color)),
          labelStyle: TextStyle(color: color)),
    );
  }

  buildButton({text, size, weight, color, heightButton, widthButton}) {
    return Container(
      width: widthButton,
      height: heightButton,
      child: ElevatedButton(
          onPressed: () {
            if (nickname1.text == "") {
              setState(() {
                colorInput = Color.fromARGB(255, 200, 30, 18);
              });
            } else {
              nickname = nickname1.text;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Number1()),
                  (route) => false);
            }
          },
          child:
              buildText(text: text, size: size, weight: weight, color: color)),
    );
  }

  buildHeight({height}) {
    return SizedBox(
      height: height,
    );
  }
}
