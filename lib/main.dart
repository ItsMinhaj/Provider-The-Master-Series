import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provier_master_series/provider/add_to_fav_provider.dart';
import 'package:provier_master_series/provider/slider_opacity_provider.dart';
import 'package:provier_master_series/screen/add_to_favorite/add_to_favorite.dart';
import 'package:provier_master_series/screen/slider_opacity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SliderOpacityProvider()),
        ChangeNotifierProvider(create: (context) => AddToFavProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Slider Opacity',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AddToFavoriteScreen(),
      ),
    );
  }
}
