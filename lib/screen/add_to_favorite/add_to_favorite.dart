import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provier_master_series/provider/add_to_fav_provider.dart';
import 'package:provier_master_series/screen/add_to_favorite/show_fav_items.dart';

class AddToFavoriteScreen extends StatelessWidget {
  const AddToFavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build method");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add To Favorite"),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShowFavItems()));
              },
              child: const Icon(
                Icons.favorite,
                size: 26,
              )),
          const SizedBox(width: 20),
        ],
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Consumer<AddToFavProvider>(
              builder: (context, value, child) => ListTile(
                title: Text("Items $index"),
                trailing: InkWell(
                  onTap: () {
                    if (value.isSelected.contains(index)) {
                      value.removeFavItem(index);
                    } else {
                      value.addFavItem(index);
                    }
                  },
                  child: Icon(value.isSelected.contains(index)
                      ? Icons.favorite
                      : Icons.favorite_border_outlined),
                ),
              ),
            );
          }),
    );
  }
}
