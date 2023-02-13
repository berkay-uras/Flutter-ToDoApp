import 'package:flutter/material.dart';
import 'package:berkay/makeMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic todo app",
      debugShowCheckedModeBanner: false, //we can hide "debug" at the top-right corner
      home: Wharf(),
    );
  }
}

class Wharf extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold (
        drawer: MakeMenu(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange,
        title:Row(
            children: [

          SizedBox(width: 60),
              Text('MY TODO APP'),
]
      ),
      ),
        body: HomePage(),

    );
  }


}

class HomePage extends StatefulWidget {
  @override

  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  TextEditingController t1 = TextEditingController();
  List todoList = [];
//adding operation
  addTodo() {
    setState(() {
      todoList.add(t1.text);
      t1.clear();
    });
  }
//delete operation
  deleteTodo() {
    setState(() {
      todoList.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(todoList[index]),
                subtitle: Text("Do it as soon as possible!"),
              ),
            ),
          ),
          //TextField(
           // controller: t1,
         // ),
          TextField(
            controller: t1,
            cursorColor: Colors.black,
            style: TextStyle(
                color: Colors.white,
            ),
            decoration: InputDecoration(
              hintText: 'Enter Your ToDo',
              hintStyle: TextStyle(fontStyle: FontStyle.italic),
              filled: true,
              fillColor: Colors.black45,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(80)
              ),
            ),
          ),
          //these buttons for adding and deleting operations
          FloatingActionButton(
            child: Icon(Icons.add),
            elevation: 0,
            backgroundColor: Colors.blue,
            onPressed: addTodo,
            tooltip: 'add', //when you click the add button you'll see tip top of button
          ),
          FloatingActionButton(
            child: Icon(Icons.delete_outlined),
            elevation: 0,
            backgroundColor: Colors.red,
            onPressed: deleteTodo,
            tooltip: 'delete', //when you click the delete button you'll see tip top of button
          ),
        ],
      ),
    );
  }
}