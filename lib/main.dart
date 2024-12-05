import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrNames = ['Flutter','Native Android','Firebase','API','Database','Kotlin','Java','Flutter','Native Android','Firebase','API','Database','Kotlin','Java','Flutter','Native Android','Firebase','API','Database','Kotlin','Java'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text('Dashboard'),
      ),
      body: ListView.separated(itemBuilder: (context,index){

        return ListTile(
          leading:Text('$index') ,
          title: Text(arrNames[index]),
          subtitle:Text('Number') ,
          trailing:Icon(Icons.add) ,

        );
      },
          separatorBuilder: (context,index){

        return Divider(height: 5,thickness: 5,);
          },
          itemCount: arrNames.length)
    );
  }
}
