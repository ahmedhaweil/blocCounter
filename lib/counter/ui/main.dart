import 'package:counterflutter3/counter/bloc/BlocCounter.dart';
import 'package:counterflutter3/counter/bloc/blocEvents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
          create: (BuildContext context) => BlocCounter(0),
          child: MyHomePage()),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print('changes');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bloc Example"),
      ),
      body: Center(
        child: BlocBuilder<BlocCounter, double>(
          builder: (context, statecount) {
          return  Container(child: Text("$statecount",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)));
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {
         context.read<BlocCounter>().add(BlocCounterEvents.increment);
          },child: Icon(Icons.add)) ,
          FloatingActionButton(onPressed: () {
            context.read<BlocCounter>().add(BlocCounterEvents.decrement);
          },child: Icon(Icons.remove)) ,
          FloatingActionButton(onPressed: () {
            context.read<BlocCounter>().add(BlocCounterEvents.MOHAMED);

          },child: Icon(Icons.ac_unit))
        ],
      ),
    );
  }
}
