import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_21_learn_provider/providers.dart';
class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title: Text("welcome"),
        centerTitle: true,),
      body: Consumer<provide>(
        builder: (context,providemodel,child){
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: providemodel.numbers.length,
                  itemBuilder:(context,index){
                    return Text(providemodel.numbers[index].toString(),style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),);

                  }
              ),
            ),
            FloatingActionButton(onPressed:(){
             providemodel.add();
            },child: Icon(Icons.add),),

          ] );
        },  )




    );
  }
}
