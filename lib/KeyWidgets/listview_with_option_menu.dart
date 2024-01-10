import 'package:flutter/material.dart'; 

void main() { 
runApp(const ListViewWithMenuOption()); 
} 

class ListViewWithMenuOption extends StatelessWidget {
  const ListViewWithMenuOption({super.key});
 
@override 
Widget build(BuildContext context) { 
	return MaterialApp( 
  //  debugShowMaterialGrid: false,
	theme: ThemeData( 
		primarySwatch: Colors.blue, 
	), 
	debugShowCheckedModeBanner: false, 

	home: const MyListView(), 
	); 
} 
} 

class MyListView extends StatelessWidget {
  const MyListView({super.key});
 
@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	appBar: AppBar( 
    backgroundColor: const Color.fromARGB(255, 101, 122, 245) ,
		title: const Text('ListView with Options Menus @flutterlearningjourney'), 
	), 
	body: Column( 
		children: <Widget>[ 
		Expanded( 
			child: ListView( 
			children: <Widget>[ 
				// Create a ListView with a list of items, 
				// each having a PopupMenuButton 
				for (int i = 1; i <= 5; i++) 
				ListTile( 
					title: Text("List Item $i"), 
					trailing: PopupMenuButton<int>( 
					onSelected: (value) { 
						// Handle the selection from the PopupMenuButton 
						if (value == 0) { 
						_showSnackbar(context, "Option 1 selected"); 
						} else if (value == 1) { 
						_showSnackbar(context, "Option 2 selected"); 
						} 
					}, 
					itemBuilder: (BuildContext context) { 
						// Define the menu items for the PopupMenuButton 
						return <PopupMenuEntry<int>>[ 
						const PopupMenuItem<int>( 
							value: 0, 
							child: Text("Option 1"), 
						), 
						const PopupMenuItem<int>( 
							value: 1, 
							child: Text("Option 2"), 
						), 
						]; 
					}, 
					), 
				), 
			], 
			), 
		), 
		], 
	), 
	); 
} 

// Display a Snackbar with the provided message 
void _showSnackbar(BuildContext context, String message) { 
	ScaffoldMessenger.of(context).showSnackBar( 
	SnackBar( 
		content: Text(message), 
	), 
	); 
} 
} 
