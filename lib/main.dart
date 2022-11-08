import 'package:bmicalculator/secondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // double weights = 70;
  double height = 170;
  double weight = 70;
  double  bmi = 0;

  // void calculate(){
  //   result = weight * 10000 / (height * height);
  //   Text("IIIII");
  // }

  @override
  void main() {
    var bmi = weight / (height) * (height);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black, title: Text("BMI Calculator")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text("Enter weight",
                //     style: TextStyle(
                //         fontSize: 30,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white70)),
                // Padding(
                //   padding: EdgeInsets.only(top: 10),
                //   child: Container(
                //       height: 100,
                //       width: 320,
                //       color: Colors.white70,
                //       child: Column(
                //         children: [
                //           Text("Weight = ${weights} kg",
                //               style: TextStyle(fontSize: 20, color: Colors.white)),
                //           Slider(
                //               value: weights,
                //               min: 20,
                //               max: 200,
                //               onChanged: (value) {
                //                 setState(() {
                //                   weights = value;
                //                   print(weights);
                //                 });
                //               })
                //         ],
                //       )),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text("Enter height",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    height: 100,
                    width: 320,
                    color: Colors.white24,
                    child: Column(
                      children: [
                        Text("Height = ${height.round()} cm",
                            style: TextStyle(fontSize: 20, color: Colors.amberAccent)),
                        Slider(
                            value: height,
                            min: 100,
                            max: 300,
                            onChanged: (value) {
                              setState(() {
                                height = value;
                                print(height);
                              });
                            }),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    "Your weight: ${weight} kg",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.white24)),
                            onPressed: () {
                              setState(() {
                                weight = weight - 0.5;
                              });
                            },
                            child: Text('-')),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.white24)),
                          onPressed: () {
                            setState(() {
                              weight = weight + 0.5;
                            });
                          },
                          child: Text('+'))
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed:(){setState(() {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=> SecondPage(bmi:bmi)));
                              bmi = weight * 10000 / (height * height);
                            });

                              },
                            child: Text("Calculate"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                        ),)
                      ],
                    )),



              ], //children
            )));
  }
}
