import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count1 = 0;
  int _count2 = 0;
  String vicTeam = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50.0),
          const Text(
            '탁구 대회',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('세모 대학'),
              Text('네모 대학'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '$_count1점',
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$_count2점',
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _count1 += 1;
                        if (_count1 > _count2) {
                          vicTeam = "세모대학 승리!!";
                        } else {
                          vicTeam = "네모대학 승리!!";
                        }
                      });
                    },
                    icon: const Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _count1 -= 1;
                      });
                    },
                    icon: const Icon(Icons.remove),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _count2 += 1;
                        if (_count1 > _count2) {
                          vicTeam = "세모대학 승리!!";
                        } else {
                          vicTeam = "네모대학 승리!!";
                        }
                      });
                    },
                    icon: const Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _count2 -= 1;
                      });
                    },
                    icon: const Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Text(
            vicTeam,
            style: const TextStyle(
              fontSize: 50.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
