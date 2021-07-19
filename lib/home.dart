import 'package:even_odd/even.dart';
import 'package:even_odd/odd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.cyan,
                onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Even()));

              },
                child: Text("EVEN",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
              ),
            ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.cyan,
                onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Odd()));

              },
                child: Text("ODD",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ),

          ],//children
        ),
      ),
    );


  }
}
