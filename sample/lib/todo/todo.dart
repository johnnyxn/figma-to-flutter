//@FigmaFile("KJFHKJH498595NFJKNFKJN")
//@FigmaComponent("Logo")
library sample;

import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'todo.g.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class Todo {
  bool isSelected = false;
  final String title;
  Todo(this.title);
  void toggle() => this.isSelected = !this.isSelected;
}

class _TodoPageState extends State<TodoPage> {

  TextEditingController _editing = TextEditingController();

  List<Todo> todos = [];

  void _orderTodos() {
    this.todos.sort((a,b) {
      if(!a.isSelected && b.isSelected)
        return -1;
      if(a.isSelected && !b.isSelected)
        return 1;
      return a.title.compareTo(b.title);
    });
  }

  Widget _buildLogo() => Container(
    margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      constraints: BoxConstraints.expand(height: 128.0),  
      child: TodoLogo(imageProvider: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1024px-Google_%22G%22_Logo.svg.png")),
  );

  Widget _buildHeader() => Container(
      margin: EdgeInsets.all(10.0),
      constraints: BoxConstraints.expand(height: 48.0),  
      child: AddTodo(
        value: TextField(
          controller: _editing,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter a new task'
          ),
          onSubmitted: (text) {
            this.setState(() {
                todos.add(new Todo(text));
                _editing.clear();
                _orderTodos();
            });
          },
        )
      )
    );

  Widget _buildItem(int i) => Container(
    margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
    constraints: BoxConstraints.expand(height: 58.0),  
    child: TodoItem(
      title:  TextData(text: todos[i].title),
      selected: VectorData(isVisible: todos[i].isSelected),
      onSelect: (){ 
        print("selected"); 
        this.setState(() { 
          todos[i].toggle(); 
          _orderTodos(); 
        });
      }),
  );

  Widget _buildCard(int i) => Container(
    margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
    constraints: BoxConstraints.expand(height: 128.0),  
    child: Card1(
      title:  TextData(text: "Test $i"),
      loveCount: TextData(text: min(i * 3 * 10 + i, 99).toString()),
      imageProvider: NetworkImage("https://picsum.photos/801?image=${i}0"),
    )
  );

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child:ListView.builder(
        itemCount: todos.length + 2 + 3,
        itemBuilder: (b,i){ 
          if(i == 0) return _buildLogo();
          if(i == 1) return _buildHeader();
          if(i == 2) return _buildCard(i);
          if(i == 3) return _buildCard(i);
          if(i == 4) return _buildCard(i);
          return _buildItem(i- 2 - 3);
      }, 
    )));
  }
}
  
