import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames =['Aronno','Akram','Mitul','Eabadat','Data','Rubi','Aronno','Akram','Mitul','Eabadat','Data','Rubi'];
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purple,
      title: Center(
        child: Text("ListView All",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        )),
      ),
      
    ),
   //lISTvIew
   /*ListView(
        scrollDirection: Axis.horizontal,
        //reverse: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("one",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("two",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("three",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("four",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("five",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold),),
          ),
        ],
      ),*/
      //ListView.builder
      /*ListView.builder(
          itemBuilder: (context, index) {
            return Text(arrNames[index],
            style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 25));
          },
      itemCount: arrNames.length,
      itemExtent: 100,
      scrollDirection: Axis.vertical,)*/
      body:ListView.separated(itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrNames[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrNames[index],style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrNames[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
            ),
          ],
        );
      }, separatorBuilder: (context, index) {
        return Divider(height: 100,thickness: 1,color: Colors.purple,);
      }, itemCount: arrNames.length),
    );
  }
}