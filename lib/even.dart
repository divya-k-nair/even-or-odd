import 'package:even_odd/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Even extends StatefulWidget {

  @override
  _EvenState createState() => _EvenState();
}

class _EvenState extends State<Even> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _even=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          title: Text("EVEN"),
        ),
        body:SingleChildScrollView(
          child:  Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: num1,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.arrow_forward,color: Colors.red,size: 40,),
                    hintText: "Number 1",
                    labelText: "Number 1",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: num2,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.arrow_forward,color: Colors.red,size: 40,),
                    hintText: "Number 2",
                    labelText: "Number 2",
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
                    color: Colors.green,
                    onPressed:(){
                      var getNumber1=int.parse(num1.text);
                      var getNumber2=int.parse(num2.text);
                      print(getNumber1);
                      print(getNumber2);
                      setState(() {
                        if(getNumber1.isEven)
                        {
                          _even=getNumber1;
                        }
                        else{
                          _even=getNumber2;
                        }
                      });

                      print(_even);

                    },
                    child: Text("CHECK",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Even number",style:TextStyle(
                  color: Colors.pink,
                  fontSize: 25,
                ),
                ),

                Text(_even.toString(),
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
                    color: Colors.green,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));

                  },
                    child: Text("BACK TO HOME",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                  ),
                ),
                ),
              ],//children
            ),
          ),
        )  ,
        )


    );
  }
}
