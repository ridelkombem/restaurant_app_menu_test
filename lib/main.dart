import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_menu_app_test/screens/tabs_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Raleway',
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.amber),
          textTheme: ThemeData.light().textTheme.copyWith(
                titleLarge:
                    const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                titleMedium:
                    const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                bodyLarge: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoCondensed'),
              )),
      initialRoute: '/',
      routes: {
        '/': (context) => const TabsScreen(),
      },
    );
  }
}
