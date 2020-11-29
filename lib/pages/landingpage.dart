import 'package:flutter/material.dart';
import 'package:octo_assignment/pages/homepage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("xxxxx", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        height: MediaQuery.of(context).size.height*0.2,
        width: MediaQuery.of(context).size.width*0.98,
        child: Card(
            elevation: 5,

            color: Colors.grey,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.tag_faces,color: Colors.white,),
                Text('Arpit Sanghvi',style: TextStyle(color: Colors.white, fontSize: 25),),
                Padding(
                  padding: const EdgeInsets.fromLTRB(150,0,0,0),
                  child: Text('+7.39 🔼',style: TextStyle(color: Colors.white, fontSize: 25),),
                ),

              ],
            )

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("+"),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => HomePage()));
        },
      ),
    );
  }
}
