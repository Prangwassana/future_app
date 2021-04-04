import 'package:flutter/material.dart';

void main() =>runApp(LoadingPage());
class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  Future<String> delayTime()async{
    String txt = await Future.delayed(Duration(seconds: 10),(){
      return 'Hello';});
      return txt;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
            future: delayTime(),
            builder: (BuildContext context,AsyncSnapshot snapshot){
              if(snapshot.hasData) {
                return Column(
                  children: <Widget>[
                    Image.network("https://scontent.fbkk10-1.fna.fbcdn.net/v/t1.6435-9/162511227_2360023810808617_4800334000695571540_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=d9WhHRupvfMAX9Rz5kg&_nc_ht=scontent.fbkk10-1.fna&oh=7306c8d38217fc1125b89e9aa8e8408e&oe=608F7E63"),
                        SizedBox(height: 20),
                    Text("Prang Wassana "),
                 ],
                );}
              else if (snapshot.hasError) {
                return Text('Error !!');}
              else {
                return LinearProgressIndicator();}

            },
          ),
        )
      )
    );
  }
}
