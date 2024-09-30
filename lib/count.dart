import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedpreferensDemo extends StatefulWidget{
   const SharedpreferensDemo ({super.key});
  @override
   State<SharedpreferensDemo> createState() => _SharedpreferensDemoState();
}
class _SharedpreferensDemoState extends State <SharedpreferensDemo>{
  int  _counter =0;
  @override
  void initState(){
    super.initState();
    loadCounter();

  }
  loadCounter() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter =prefs.getInt('counter') ?? 0;

    });
  }
   incrementCounter() async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter++;
    });
    prefs.setInt('counter', _counter);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: 
      Text("SharedPreferences"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
            <Widget>[
              Text("Counter value: $_counter"),
              ElevatedButton(
                onPressed:incrementCounter,
              child: Text("Increment counter"),
                  )
        
              
          ],
        ),

      ),
    );
  }
}
  
