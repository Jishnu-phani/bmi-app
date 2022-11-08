import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class SecondPage extends StatefulWidget {
  SecondPage({required this.bmi});

  double bmi;





  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    Color x = Colors.green;

    if(widget.bmi < 18.5){
      x = Colors.redAccent;
    }

    else if((widget.bmi >= 18.5)&&(widget.bmi < 24.9)){
      x = Colors.green;
    }

    else if((widget.bmi >= 24.9)&&(widget.bmi < 29.9)){
      x = Colors.redAccent;
    }

    else if(widget.bmi > 30){
      x = Colors.red;
    }

    return Scaffold(backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Result"),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Your BMI is: ${widget.bmi.roundToDouble()}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: x),),



            Padding(padding: EdgeInsets.only(top: 20),
            child:
            Column(
              children: [

                Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "BMI Categories:",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                          fontWeight: FontWeight.bold),
                    )),

                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text("Underweight : <18.5",
                      style: TextStyle(fontSize: 15, color: Colors.amber.shade200)),
                ),
                Text("Normal weight : 18.5–24.9",
                    style: TextStyle(fontSize: 15, color: Colors.amber.shade200)),
                Text("Overweight = 25–29.9",
                    style: TextStyle(fontSize: 15, color: Colors.amber.shade200)),
                Text("Obesity = BMI of 30 or greater",
                    style: TextStyle(fontSize: 15, color: Colors.amber.shade200)),

                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text("Rate our app!! :)", style: TextStyle(fontSize: 30, color: Colors.amber),),
                ),

                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),),


            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(onPressed:() {
                Navigator.pop(context);
              }, child: Text("Go Back", style:TextStyle(fontSize: 20, color: Colors.white) ,)),
            ),


          ],
        ),

      )
    );
  }
}
