import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Learn Flutter'),
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios))),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset('images/img.png'),
            const Divider(
              color: Colors.teal,
            ),
            Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'This is a text widget',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.blue : Colors.teal),
              onPressed: () {
                debugPrint("Elevated button");
              },
              child: const Text("Elevated button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined button");
              },
              child: const Text("Outlined button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text button");
              },
              child: const Text("Text button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("Text button");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.local_fire_department, color: Colors.blue),
                  Text('Row widget'),
                  Icon(Icons.local_fire_department),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckBox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckBox = newBool;
                  });
                }),
            Image.network(
                'https://media.istockphoto.com/id/1494548750/ja/%E3%83%99%E3%82%AF%E3%82%BF%E3%83%BC/%E3%83%99%E3%82%AF%E3%83%88%E3%83%AB%E5%85%AD%E8%A7%92%E5%BD%A2%E3%83%91%E3%82%BF%E3%83%BC%E3%83%B3%E5%8D%98%E7%B4%94%E3%81%AA%E5%85%AD%E8%A7%92%E5%BD%A2%E3%81%AE%E8%A6%81%E7%B4%A0%E3%82%92%E6%8C%81%E3%81%A4%E5%B9%BE%E4%BD%95%E5%AD%A6%E7%9A%84%E3%81%AA%E6%8A%BD%E8%B1%A1%E7%9A%84%E3%81%AA%E8%83%8C%E6%99%AF.jpg?s=2048x2048&w=is&k=20&c=KUWlv2a9dXM1agQuIJ06No9JILh2KAGckGHvXZzF7Bo=')
          ],
        )));
  }
}
