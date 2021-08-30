import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/great_places.dart';
import './screens/add_place_screen.dart';
import './screens/places_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          // primarySwatch: Colors.indigo,
          primaryColor: Color(0xFF6DD47E),
          accentColor: Color(0xFF293250),
        ),
        debugShowCheckedModeBanner: false,
        home: PlacesScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
      ),
    );
  }
}
