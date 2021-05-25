import 'package:bmi_calculator/Reusable_Card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class PageArguments{
  final String bmi;
  final String bmiComment;
  final String bmiDescription;

  PageArguments({this.bmi, this.bmiComment, this.bmiDescription});

}

class ResultsPage extends StatefulWidget {
  final PageArguments arguments;
  ResultsPage({this.arguments});

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
                child: Text('Your Result',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 45))),
          ),
          Expanded(
              child: ReusableCard(
            colour: kIconColor,
            childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.arguments.bmiComment,
                  style: kBmiCommentTextStyle,
                ),
                Text(
                  widget.arguments.bmi,
                  style: kBmiTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    widget.arguments.bmiDescription,
                    style: kBmiDescTextStyle,
                  )),
                )
              ],
            ),
          )),
          GestureDetector(
            child: Container(
              child: Center(
                child: Text(
                  'ROLL BACK',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              padding: EdgeInsets.only(bottom: 10),
              height: kBottomBarHeight,
              color: kBottomContainerColor,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
