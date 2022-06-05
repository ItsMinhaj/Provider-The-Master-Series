import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provier_master_series/provider/add_to_fav_provider.dart';

class ShowFavItems extends StatelessWidget {
  const ShowFavItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<AddToFavProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Favorite Items"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: favProvider.isSelected.length,
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text("Items $index"),
              trailing: const Icon(Icons.favorite),
            );
          })),
    );
  }
}
