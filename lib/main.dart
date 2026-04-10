import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade500),
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 42, fontFamily: 'FontPlayWrite', fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 35, fontFamily: 'SmoochSans'),

        ),
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(

  );
}



class _MyHomePageState extends State<MyHomePage> {

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,
        fontFamily: 'FontPlayWrite', color: Colors.black),),
        centerTitle: true,
      ),

      body: Container(
        color: Colors.blue.shade100,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Number 1: ', style: TextStyle(fontSize: 20, fontFamily: 'FontPlayWrite'
                ,fontWeight: FontWeight.bold),),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: no1Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Number 1',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Number 2: ', style: TextStyle(fontSize: 20, fontFamily: 'FontPlayWrite'
                ,fontWeight: FontWeight.bold),),
                SizedBox(
                  width: 200,
                  child: TextField(
                  controller: no2Controller,
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Number 2',
                      border: OutlineInputBorder(),

                    ),
                ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var sum = no1 + no2;
                    result = "The addition of $no1 and $no2 is: $sum";

                    setState(() {

                    });
                  },
                  child: Icon(Icons.add, size: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var sub = no1 - no2;
                    result = "The subtraction of $no1 and $no2 is: $sub";

                    setState(() {

                    });
                  },
                  child: FaIcon(FontAwesomeIcons.minus, size: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var mul = no1 * no2;
                    result = "The multiplication of $no1 and $no2 is: $mul";

                    setState(() {

                    });
                  },
                  child: FaIcon(FontAwesomeIcons.x, size: 30,),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var div = no1 / no2;
                    result = "THe division of $no1 and $no2 is : $div";

                    setState(() {

                    });
                  },
                  child: FaIcon(FontAwesomeIcons.divide, size: 30,),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Result: ',style: TextStyle(fontSize: 20, fontFamily: 'FontPlayWrite'
                , fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 30,
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Text(result, style: TextStyle(fontSize: 15, fontFamily: 'FontPlayWrite',
                          fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    no1Controller.clear();
                    no2Controller.clear();
                    setState((){
                      result="";
                    });
                  },
                  child: Text('Clear', style: TextStyle(fontSize: 20, fontFamily: 'FontPlayWrite',
                  fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}

