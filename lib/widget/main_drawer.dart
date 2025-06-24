import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key,required this.onScelectionScreen});
  final void Function(String s) onScelectionScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.fastfood, size: 48),
                SizedBox(width: 20),
                Text('Cooking Up'),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.restaurant,size: 26,),
            title: Text('Meals',style: TextStyle(fontSize: 24),),
            onTap: () {
              onScelectionScreen('meal');
            },
          ),
           ListTile(
            leading: Icon(Icons.settings,size: 26,),
            title: Text('Fellters',style: TextStyle(fontSize: 24),),
            onTap: () {
              onScelectionScreen('filter');
            },
          ),
        ],
      ),
    );
  }
}
