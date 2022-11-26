import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters-screen';

  final Function saveFilters;
  final Map<String,bool> currentFilters;
  FilterScreen(this.currentFilters,this.saveFilters);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _gultineFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  initState(){
     _gultineFree = widget.currentFilters['gluten'] as bool;
     _vegetarian = widget.currentFilters['vegetarian'] as bool;
     _vegan = widget.currentFilters['vegan'] as bool;
     _lactoseFree = widget.currentFilters['lactose'] as bool;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
          actions: [IconButton(icon: Icon(Icons.save),onPressed: (){
            final selectedFilters = {
              'gluten': _gultineFree,
              'lactose': _vegetarian,
              'vegan':_vegan,
              'vegetarian':_vegetarian,
            };
            widget.saveFilters(selectedFilters);
            },),],
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text("Adjust your meal selection",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: ListView(
                  children: [
                    SwitchListTile(title: Text('Glutine-Free'),subtitle: Text('Only includes glutine-free meals.'),secondary: Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/1488/1488167.png',scale: 12)),value: _gultineFree, onChanged: (value){
                      setState(() {
                        _gultineFree = value;
                      });
                    }),
                    SwitchListTile(title: Text('Lactose-Free'),subtitle: Text('Only includes lactose-free meals.'),secondary: Image(image: NetworkImage('https://st2.depositphotos.com/1007566/7307/v/950/depositphotos_73071121-stock-illustration-lactose-free.jpg',scale: 12)),value: _lactoseFree, onChanged: (value){
                      setState(() {
                        _lactoseFree = value;
                      });
                    }),
                    SwitchListTile(title: Text('Vegetarian'),subtitle: Text('Only includes vegetarian meals.'),secondary: Image(image: NetworkImage('https://media.istockphoto.com/id/1297289529/vector/leaf-icon-vector-stock-illustration.jpg?s=612x612&w=0&k=20&c=dFtiy2BLo20FR5OeJg932L1BW4UNXhC-f-zew5vfLz0=',scale: 12)),value: _vegetarian, onChanged: (value){
                      setState(() {
                        _vegetarian = value;
                      });
                    }),
                    SwitchListTile(title: Text('Vegan'),subtitle: Text('Only includes vegan meals.'),secondary: Image(image: NetworkImage('https://static.vecteezy.com/system/resources/previews/002/300/792/original/vegan-icon-bio-ecology-organic-logos-label-tag-green-leaf-free-vector.jpg',scale: 12)),value: _vegan, onChanged: (value){
                      setState(() {
                        _vegan = value;
                      });
                    }),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
