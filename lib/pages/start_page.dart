import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  String dropdownValue = 'Option 1';
  bool isChecked = false;
  // Calculate the width of the dropdown
  double dropdownWidth = 140; // This is the width of the dropdown button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Option 1', 'Option 2', 'Option 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Container(
              width: dropdownWidth,
              child: CheckboxListTile(
                title: Text('Today'),
                value: isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isChecked = newValue!;
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Button pressed');
              },
              child: Text('Press me'),
            ),
          ],
        ),
      ),
    );
  }
}
