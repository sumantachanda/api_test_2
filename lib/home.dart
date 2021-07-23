import 'package:flutter/material.dart';
import 'package:api_test_2/api/api_call.dart';


class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {

  String time='loading';

void setWorlTime() async{



  worldTime clock= worldTime(location: 'east', flag:'east', url: 'est/now');
  await clock.getTime();
  print(clock.time);

  setState(() {
    time=clock.time;
  });
}


  @override
  Widget build(BuildContext context) {

 setWorlTime();


    return Scaffold(
      appBar: AppBar(
      title: Text(
        'Api Test'
      ) ,
      ),
      body: Column(
        children: [
          FlatButton(onPressed: (){}, child: Icon(Icons.android
          ,size: 150,color: Colors.green,),
            
            

          ),

          Text(time),
        ],
      ),






    );
  }
}
