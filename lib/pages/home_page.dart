import 'package:flutter/material.dart';

import '../constants.dart';
import 'product_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child:Container(
          child:Stack(
            children :<Widget>[
              Center(
                child: Image(image: AssetImage('images/posetler.png'),
                  height: 440.0,
                  width: 450.0,
                  fit:BoxFit.fitHeight,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(270.0, 570.0,0,0),
                child: Column(
                  children:<Widget> [
                    Center(child: IconButton(icon: Icon(Icons.arrow_forward,size: 80,color:kIconColor[800],), onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductPage()),
                      );
                    },),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
