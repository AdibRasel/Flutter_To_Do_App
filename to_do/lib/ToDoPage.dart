import 'package:flutter/material.dart';
import 'package:to_do/style.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  List ToDoList = [{"f":"f"}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do App"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 15,
              child: Row(

                children: [

                  Expanded(
                    flex: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: TextFormField(
                        decoration: AppInputDecoration("List Item"),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 30,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Add"),
                      style: AppButtonStyle(),
                    ),
                  )

                ],

              )
            ),
            
            
            Expanded(
              flex: 85,
              child: ListView.builder(
                itemCount: ToDoList.length,
                itemBuilder: (context, index){
                  return Card(
                    child: SizedBox50(
                      Row(
                        children: [
                           Expanded(
                              flex: 90,
                              child: Text("Item"),
                            ),

                            Expanded(
                              flex: 10,
                              child: ElevatedButton(
                                onPressed: (){}, 
                                child: Icon(Icons.delete),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,  // Color of the background (use 'primary' instead of 'backgroundColor')
                                  padding: const EdgeInsets.all(5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                  ),
                                ),
                              ),
                            )
                        ],
                      )
                    ),
                  );
                }
                )
            )

          ],
        ),
      ),
    );
  }
}