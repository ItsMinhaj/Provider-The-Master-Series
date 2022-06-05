import 'package:flutter/cupertino.dart';

class AddToFavProvider with ChangeNotifier {
  List<int> _isSelected = [];

  List<int> get isSelected => _isSelected;

  addFavItem(int position) {
    _isSelected.add(position);
    notifyListeners();
  }

  removeFavItem(int position) {
    _isSelected.remove(position);
    notifyListeners();
  }
}
