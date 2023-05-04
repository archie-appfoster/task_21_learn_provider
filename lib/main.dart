import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_21_learn_provider/providers.dart';

import 'Home.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context)=>provide())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          home: Home(),

      ),
    );
  }
}
