import 'package:flutter/material.dart';
import 'package:midterm_630710058/check.dart';

class Tmp extends StatefulWidget {
  const Tmp({Key? key}) : super(key: key);

  @override
  State<Tmp> createState() => _TmpState();
}

class _TmpState extends State<Tmp> {
  final controller = TextEditingController();
  final check = Check();
  var feedbackText = '';
  var temp = 0.0;
  var ch = Check();

  void CF() {
    if (double.tryParse(controller.text) == null) {
      setState(() {
        feedbackText = "input Error!!";
      });
    } else {
      setState(() {
        temp = double.tryParse(controller.text)!;
        setState(() {
          double sum = ch.cf(temp);
          feedbackText = "$temp Celsius = $sum Fahrenheit";
        });
      });
    }
  }
    void CK(){
      if(double.tryParse(controller.text)==null){
        setState(() {
          feedbackText = "input Error!!";
        });
      }else {
        setState(() {
          temp = double.tryParse(controller.text)!;
          setState(() {
            double sum= ch.ck(temp);
            feedbackText = "$temp Celsius = $sum Kelvin";
          });
        });
      }
    }
    void FC(){
      if(double.tryParse(controller.text)==null){
        setState(() {
          feedbackText = "input Error!!";
        });
      }else {
        setState(() {
          temp = double.tryParse(controller.text)!;
          setState(() {
            double sum= ch.fc(temp);
            feedbackText = "$temp Fahrenheit = $sum Celsius";
          });
        });
      }
    }
    void FK(){
      if(double.tryParse(controller.text)==null){
        setState(() {
          feedbackText = "input Error!!";
        });
      }else {
        setState(() {
          temp = double.tryParse(controller.text)!;
          setState(() {
            double sum= ch.fk(temp);
            feedbackText = "$temp Fahrenheit = $sum Kelvin";
          });
        });
      }
    }
    void KC(){
      if(double.tryParse(controller.text)==null){
        setState(() {
          feedbackText = "input Error!!";
        });
      }else {
        setState(() {
          temp = double.tryParse(controller.text)!;
          setState(() {
            double sum= ch.kc(temp);
            feedbackText = "$temp Kelvin = $sum Celsius";
          });
        });
      }
    }
    void KF(){
      if(double.tryParse(controller.text)==null){
        setState(() {
          feedbackText = "input Error!!";
        });
      }else {
        setState(() {
          temp = double.tryParse(controller.text)!;
          setState(() {
            double sum= ch.kc(temp);
            feedbackText = "$temp Kelvin to  = $sum Fahrenheit";
          });
        });
      }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Midterm Exam'),
      ),
        body: Center(
      child: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Text(
              'Temperature Converter',
              style: TextStyle(fontSize: 50, color: Colors.black),
            ),
          ),
          Container(
            width: 450,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white, //สีพื้นหลังของ Container
              border: Border.all(
                width: 5.0,
                color: Colors.deepPurple.shade200,
              ),
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a temperature value to convert',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: CF,
                              child: Text('Celsius to Fahrenheit')),
                          Container(
                            width: 3,
                          ),
                          ElevatedButton(
                              onPressed: CK,
                              child: Text('Celsius to Kelvin'))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: FC,
                              child: Text('Fahrenheit to Celsius')),
                          Container(
                            width: 3,
                          ),
                          ElevatedButton(
                              onPressed: FK,
                              child: Text('Fahrenheit to Kelvin'))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: KC,
                            child: Text('Kelvin to Celsius')),
                        Container(
                          width: 3,
                        ),
                        ElevatedButton(
                            onPressed: KF,
                            child: Text('Kelvin to Fahrenheit'))
                      ],
                    ),
                  ],
                )),
          ),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Text(feedbackText),
            ),
        ],
      )),
    ));
  }
}
