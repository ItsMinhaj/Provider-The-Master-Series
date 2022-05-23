import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provier_master_series/provider/slider_opacity_provider.dart';
import 'package:provier_master_series/screen/slider_opacity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => SliderOpacityProvider()),
      child: MaterialApp(
        title: 'Slider Opacity',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SliderOpactiy(),
      ),
    );
  }
}
