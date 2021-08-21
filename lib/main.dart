import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}

const kPryColor = Colors.grey;
const kSecColor = Colors.black;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String userName = '';
  String userNickname = '';
  String userEmail = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 150),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name here',
                    hintStyle: TextStyle(color: kPryColor),
                    labelStyle: TextStyle(color: kSecColor),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      userName = value;
                    });
                  }),
              TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email here',
                    hintStyle: TextStyle(color: kPryColor),
                    labelStyle: TextStyle(color: kSecColor),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      userEmail = value;
                    });
                  }),
              TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your nickname here',
                    hintStyle: TextStyle(color: kPryColor),
                    labelStyle: TextStyle(color: kSecColor),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      userNickname = value;
                    });
                  }),
              TextButton(
                onPressed: () {
                  Alert(
                    context: context,
                    type: AlertType.success,
                    title: 'Welcome! $userNickname',
                    desc:
                        "It's a pleasure to have you here $userName \n \n check your email $userEmail for further instructions",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Continue",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        color: Color.fromRGBO(0, 179, 134, 1.0),
                        radius: BorderRadius.circular(0.0),
                      ),
                    ],
                  ).show();
                },
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.deepOrangeAccent),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
