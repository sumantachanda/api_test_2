import 'package:http/http.dart';
import 'dart:convert';



class worldTime{

  String location;
  String time;
  String url;
  String flag;


  worldTime({ this.flag,this.url,this.location});


 Future< void> getTime() async{



   Response responce =await get('http://worldclockapi.com/api/json/$url');
    Map data  = jsonDecode(responce.body);
    //print(data);

    String datetime = data['currentDateTime'];
    String offset = data['utcOffset'].substring(1,3);

    print(datetime);
    //print(offset);

    //logick


    DateTime current = DateTime.parse(datetime);
    current = current.add(Duration(hours:int.parse( offset) ));

    time = current.toString();

    print(current);




  }


}











void getTime() async{
  Response responce =await get('http://worldclockapi.com/api/json/est/now');
  Map data  = jsonDecode(responce.body);
  //print(data);

  String datetime = data['currentDateTime'];
  String offset = data['utcOffset'].substring(1,3);

  print(datetime);
  //print(offset);

  //logick


  DateTime current = DateTime.parse(datetime);
  current = current.add(Duration(hours:int.parse( offset) ));

  print(current);
}
