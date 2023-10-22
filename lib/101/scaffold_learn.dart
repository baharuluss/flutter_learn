import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';


class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key ? key}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold Samples'),),
      body:const Text('merhaba'),
      backgroundColor: Colors.blue,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed:  () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 200,
            )
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 200,
        decoration: ProjectContainerDecaration(),
        child: BottomNavigationBar(items: const[
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label:'a'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label:'b'),
        ]),
      ),
    );
  }
} 