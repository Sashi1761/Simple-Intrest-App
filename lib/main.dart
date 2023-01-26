import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple Interset Clculator",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p = " ", t = " ", r = "", result = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            TextField(
              onChanged: (val) {
                p = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Principal",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              onChanged: (val) {
                t = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Time",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              onChanged: (val) {
                r = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Rate",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            //for Button
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.red)),
                height: 50,
                color: Colors.amber[900],
                child: Text(
                  'Calculate',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                onPressed: () {
                  setState(() {
                    result = (double.parse(p) *
                            double.parse(t) *
                            double.parse(r) /
                            100)
                        .toString();
                  });
                }),
            Center(
              child: Text(
                "The result is $result",
                style: TextStyle(fontSize: 22),
              ),
            )
          ],
        ),
      ),
    );
  }
}
