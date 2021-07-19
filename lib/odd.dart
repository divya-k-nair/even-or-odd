import 'package:even_odd/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Odd extends StatefulWidget {

  @override
  _OddState createState() => _OddState();
}

class _OddState extends State<Odd> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _odd=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: Text("ODD"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
           child: Column(
             children: [
               SizedBox(height: 20,),
               TextField(
                 controller: num1,
                 decoration: InputDecoration(
                   hintText: "Number1",
                   labelText: "Number1",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),
               ),
               SizedBox(height: 20,),
               TextField(
                 controller: num2,
                 decoration: InputDecoration(
                   hintText: "Number2",
                   labelText: "Number2",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),
               ),
               SizedBox(height: 20,),
               SizedBox(
                 height: 60,
                 width: double.infinity,
                 child: RaisedButton(
                   color: Colors.deepOrangeAccent,
                   onPressed: (){
                     var getNumber1=int.parse(num1.text);
                     var getNumber2=int.parse(num2.text);
                     print(getNumber1);
                     print(getNumber2);
                     setState(() {
                       if(getNumber1.isOdd)
                       {
                         _odd = getNumber1;
                       }
                       else
                         {
                           _odd=getNumber2;
                         }

                     });
                     print(_odd);


                 },
                   child: Text("CHECK",
                     style: TextStyle(
                       color: Colors.purple,
                       fontSize: 30,
                     ),
                 ),
               ),
               ),
               SizedBox(height: 20,),
               Text("Odd number",
                 style: TextStyle(
                   color: Colors.pinkAccent,
                   fontSize: 25,
                 ),
               ),
               Text(_odd.toString(),
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 30,
                 ),
               ),

               SizedBox(height: 20,),
               SizedBox(
                 height: 60,
                 width: double.infinity,
                 child: RaisedButton(
                   color: Colors.deepOrangeAccent,
                   onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));

                 },
                   child: Text("BACK TO HOME",
                     style: TextStyle(
                       color: Colors.purple,
                       fontSize: 25,
                     ),
                 ),
               ),
               ),
               ],//children
                 ),
               ),
           ),
          ),
    );
  }
}
