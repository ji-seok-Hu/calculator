import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> num_list = [];
  List<String> ssss = [];
  List<String> num_sign = [];
  List<int> num_ssin = [];
  List<int> empy = [];
  // int number = 0;
  void num0() {
    log("0");
    setState(() {
      num_list.add('0');
      ssss.add("0");
    });
  }

  void num1() {
    log("1");
    setState(() {
      num_list.add('1');
      ssss.add("1");
    });
  }

  void num2() {
    log("2");
    setState(() {
      num_list.add('2');
      ssss.add("2");
    });
  }

  void num3() {
    log("3");
    setState(() {
      num_list.add('3');
      ssss.add("3");
    });
  }

  void num4() {
    log("4");
    setState(() {
      num_list.add('4');
      ssss.add("4");
    });
  }

  void num5() {
    log("5");
    setState(() {
      num_list.add('5');
      ssss.add("5");
    });
  }

  void num6() {
    log("6");
    setState(() {
      num_list.add('6');
      ssss.add("6");
    });
  }

  void num7() {
    log("7");
    setState(() {
      num_list.add('7');
      ssss.add("7");
    });
  }

  void num8() {
    log("8");
    setState(() {
      num_list.add('8');
      ssss.add("8");
    });
  }

  void num9() {
    log("9");
    setState(() {
      num_list.add('9');
      ssss.add("9");
    });
  }

  void num_m() {
    log("-");
    setState(() {
      num_list.add('-');
      ssss.add(",");
      num_sign.add('-');
    });
  }

  void num_p() {
    log("+");
    setState(() {
      num_list.add('+');
      ssss.add(",");
      num_sign.add("+");
    });
  }

  void num_d() {
    log("d");
    setState(() {
      num_list.clear();
      ssss.clear();
    });
  }

  void num_r() {
    log("r");
    setState(() {
      ssss[0] = ssss.join();
      List<String> result = ssss[0].split(',');
      for (int i = 0; i < result.length; i++) {
        int non = int.parse(result[i]);
        empy.add(non);
      }
      print(empy);
      for (int i = 0; i < num_sign.length; i++) {
        if (num_sign[i] == "+") {
          if (i == 0) {
            num_ssin.add(empy[0]);
            // print(num_ssin);
            num_ssin[0] = num_ssin[0] + empy[1];
          } else if (i > 0) {
            num_ssin[0] = num_ssin[0] + empy[i + 1];
            print(num_ssin);
          }
        } else if (num_sign[i] == "-") {
          if (i == 0) {
            num_ssin.add(empy[0]);
            num_ssin[0] = num_ssin[0] - empy[1];
          } else if (i > 0) {
            num_ssin[0] = num_ssin[0] - empy[i + 1];
          }
        }
      }
      num_list.clear();
      String str = num_ssin[0].toString();
      num_ssin.clear();
      num_list.add(str);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(num_list.join()),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              num0();
            },
            child: Text("0"),
          ),
          TextButton(
            onPressed: () {
              num1();
            },
            child: Text("1"),
          ),
          TextButton(
            onPressed: () {
              num2();
            },
            child: Text("2"),
          ),
          TextButton(
            onPressed: () {
              num3();
            },
            child: Text("3"),
          ),
          TextButton(
            onPressed: () {
              num4();
            },
            child: Text("4"),
          ),
          TextButton(
            onPressed: () {
              num5();
            },
            child: Text("5"),
          ),
          TextButton(
            onPressed: () {
              num6();
            },
            child: Text("6"),
          ),
          TextButton(
            onPressed: () {
              num7();
            },
            child: Text("7"),
          ),
          TextButton(
            onPressed: () {
              num8();
            },
            child: Text("8"),
          ),
          TextButton(
            onPressed: () {
              num9();
            },
            child: Text("9"),
          ),
          TextButton(
            onPressed: () {
              num_p();
            },
            child: Text("+"),
          ),
          TextButton(
            onPressed: () {
              num_m();
            },
            child: Text("-"),
          ),
          TextButton(
            onPressed: () {
              num_d();
            },
            child: Text("deal"),
          ),
          TextButton(
            onPressed: () {
              num_r();
            },
            child: Text("="),
          ),
        ],
      )),
    );
  }
}
