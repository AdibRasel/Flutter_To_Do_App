

import 'package:flutter/material.dart';
import 'package:to_do/style.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  List ToDoList = [];

  String Item = "";


  MyInputOnChange(Content){
    
    setState(() {
      Item = Content;
      
    });


  }

TextEditingController SubmitButtonValueNull = TextEditingController();

AddItem(){

  setState((){
    ToDoList.add({"Item": Item});



    SubmitButtonValueNull.clear(); 
    
  });



}


RemoveItem(index){
  
  setState((){

    ToDoList.removeAt(index);
  });

}


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
                        
                        controller: SubmitButtonValueNull, // When submit buttton then clear data ""

                        onChanged: (Content){
                          MyInputOnChange(Content);
                        },
                        decoration: AppInputDecoration("List Item"),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 30,
                    child: ElevatedButton(
                      
                      onPressed: (){
                        AddItem();
                      }, 
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
                              child: Text(ToDoList[index]["Item"].toString()),
                            ),

                            Expanded(
                              flex: 10,
                              child: ElevatedButton(
                                onPressed: (){
                                  RemoveItem(index);
                                }, 
                                child: Icon(Icons.delete),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,  
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