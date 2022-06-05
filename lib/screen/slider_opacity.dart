import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provier_master_series/provider/slider_opacity_provider.dart';

class SliderOpactiy extends StatefulWidget {
  const SliderOpactiy({Key? key}) : super(key: key);

  @override
  State<SliderOpactiy> createState() => _SliderOpactiyState();
}

class _SliderOpactiyState extends State<SliderOpactiy> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<SliderOpacityProvider>(context, listen: false);

    debugPrint("This build is called");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Opacity"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Consumer<SliderOpacityProvider>(
          //   builder: (context, value, child) =>
          // ),
          Slider(
              min: 0,
              max: 1,
              value: context.watch<SliderOpacityProvider>().sliderValue,
              onChanged: (val) {
                context.read<SliderOpacityProvider>().setValue(val);
              }),
          Row(
            children: [
              Expanded(
                // child:
                child: Container(
                  height: 120,
                  color: Colors.green.withOpacity(
                      context.watch<SliderOpacityProvider>().sliderValue),
                  child: const Center(
                    child: Text("Container 1"),
                  ),
                ),
              ),
              Expanded(
                // child: Consumer<SliderOpacityProvider>(
                //   builder: (context, value, child) =>
                // ),
                child: Container(
                  height: 120,
                  color: Colors.red.withOpacity(
                      context.watch<SliderOpacityProvider>().sliderValue),
                  child: const Center(
                    child: Text("Container 2"),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
