import 'package:flutter/material.dart';
import '../widgets/build_drawer_list_tile.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key? key,
    required this.onSelectScreen,
  }) : super(key: key);
  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            color: Theme.of(context).colorScheme.secondary,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.primary),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BuildListTile(
              icon: Icons.restaurant,
              title: 'Meals',
              onTap: () {
                // Navigator.pushReplacementNamed(context, TabsScreen.routename);
                onSelectScreen('meals');
              }),
          BuildListTile(
              icon: Icons.settings,
              title: 'Settings',
              onTap: () {
                 onSelectScreen('filters');
                // Navigator.pushReplacementNamed(context, FilterScreen.routename);
              })
        ],
      ),
    );
  }
}

