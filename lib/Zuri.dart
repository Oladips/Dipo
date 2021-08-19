import 'package:flutter/material.dart';
import './result.dart';

class Zuri extends StatefulWidget {
  @override
  _ZuriState createState() => _ZuriState();
}

class _ZuriState extends State<Zuri> {
  final namecontroller = TextEditingController();
  final secondcontroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.only(left: 5.0),
            child: Image(
              image: AssetImage('assets/zuri.png'),
            ),
          ),
          title: ListTile(title: Text('Internship', style: TextStyle(color: Colors.black, fontSize: 18)),
          subtitle: Text('Stage Two Test'),),
          ),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name'
                ),
                controller: namecontroller,
              )),
              Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your Track'
                ),
                controller: secondcontroller,
              )),
               Container(
                margin: EdgeInsets.all(40.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context)
                    => Result(
                      name: namecontroller.text,
                      track: secondcontroller.text,
                    )));
                  },
                  child: Text('Next'),),
              ), 
          ],
        ),
      ),
    );
  }
}
