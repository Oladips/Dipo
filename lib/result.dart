import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Result extends StatefulWidget {
  final String name;
  final String track;

  Result({required this.name, required this.track});
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
        title: ListTile(
          title: Text('Internship',
              style: TextStyle(color: Colors.black, fontSize: 18)),
          subtitle: Text('Stage Two Test'),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Data Output',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Name',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "${widget.name}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                'Track',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "${widget.track}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
              child: Center(
                child: Text(
                  'For more Information',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 15.0),
              child: ElevatedButton(
                  onPressed: () async {
                    String url = 'http://internship.zuri.team';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceWebView: false,
                        forceSafariVC: false,
                      );
                    } else {
                      throw 'Could not Launch $url';
                    }
                  },
                  child: Text('Zuri Internship Site')),
            )
          ],
        ),
      ),
    );
  }
}
