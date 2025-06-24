import 'package:flutter/material.dart';
// import 'package:mealapp/screens/tabs_screen.dart';
// import 'package:mealapp/widget/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}
enum filter {
  glutterMeal,
  lacostMeal,
  vegertarianMeal,
  veganMeal,
}
class _FilterScreenState extends State<FilterScreen> {
  var _gluttenFreeMealsState = false;
  var _lacostFreeMelasState = false;
  var _vegeterianFreeMelasState = false;
  var _veganFreeMelasState = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Filter')),
      // drawer: MainDrawer(
      //   onScelectionScreen: (s) {
      //     Navigator.of(context).pop();
      //     if (s == 'meal') {
      //       Navigator.of(context).pushReplacement(
      //         MaterialPageRoute(builder: (ctx) => TabsScreen()),
      //       );
      //     }
      //   },
      // ),
      body: WillPopScope(
        onWillPop: () async{ 
          Navigator.of(context).pop({
            filter.glutterMeal : _gluttenFreeMealsState,
            filter.lacostMeal : _lacostFreeMelasState,
            filter.vegertarianMeal : _vegeterianFreeMelasState,
            filter.veganMeal : _veganFreeMelasState
          });

          return false;
         },
        child: Column(
          children: [
            SwitchListTile(
              value: _gluttenFreeMealsState,
              onChanged: (isChecked) {
                setState(() {
                  _gluttenFreeMealsState = isChecked;
                });
              },
              title: Text(
                'Gluten-free',
                style: TextStyle(color: const Color.fromARGB(255, 107, 49, 45)),
              ),
              subtitle: Text('only includ gluting-free meal '),
              activeColor: Colors.green,
              contentPadding: EdgeInsets.all(10),
            ),
        
            SwitchListTile(
              value: _lacostFreeMelasState,
              onChanged: (isChecked) {
                setState(() {
                  _lacostFreeMelasState = isChecked;
                });
              },
              title: Text(
                'Lacost-free',
                style: TextStyle(color: const Color.fromARGB(255, 107, 49, 45)),
              ),
              subtitle: Text('only includ Lacost-free meal '),
              activeColor: Colors.green,
              contentPadding: EdgeInsets.all(10),
            ),
        
            SwitchListTile(
              value: _vegeterianFreeMelasState,
              onChanged: (isChecked) {
                setState(() {
                  _vegeterianFreeMelasState = isChecked;
                });
              },
              title: Text(
                'vegetarian-free',
                style: TextStyle(color: const Color.fromARGB(255, 107, 49, 45)),
              ),
              subtitle: Text('only includ vegeratrian-free meal '),
              activeColor: Colors.green,
              contentPadding: EdgeInsets.all(10),
            ),
        
            SwitchListTile(
              value: _veganFreeMelasState,
              onChanged: (isChecked) {
                setState(() {
                  _veganFreeMelasState = isChecked;
                });
              },
              title: Text(
                'vegan-free',
                style: TextStyle(color: const Color.fromARGB(255, 107, 49, 45)),
              ),
              subtitle: Text('only includ vegan-free meal '),
              activeColor: Colors.green,
              contentPadding: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
