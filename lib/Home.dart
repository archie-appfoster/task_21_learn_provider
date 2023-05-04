import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_21_learn_provider/Second.dart';
import 'package:task_21_learn_provider/providers.dart';
class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<provide>(

        builder: ((context,providemodel,child) => Scaffold(

        floatingActionButton: FloatingActionButton(onPressed:(){
         providemodel.add();

        },child: Icon(Icons.add),),
        appBar: AppBar(title: Text("welcome"),
        centerTitle: true,),
        body:
            Column(
              children: [
                Expanded(
                  child: ListView.builder(

                      itemCount: providemodel.numbers.length,
                      itemBuilder: (context, index) {
                        return Text(providemodel.numbers[index].toString(), style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),);
                      }
                  ),
                ),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => second()));
                }, child: Text("SECOND")),

              ],
            )





         )
        ) ); }
}
