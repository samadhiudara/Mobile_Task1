import 'package:flutter/material.dart';
import 'alert_dialog.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile - Task 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to my Flutter App!',
              style: Theme.of(context).textTheme.headline6, // Using custom text style
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _showAlert(context);
              },
              child: Text('Show Alert'),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          title: 'Alert',
          content: 'Button tapped!',
          buttonText: 'OK',
        );
      },
    );
  }
}
