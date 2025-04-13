import 'package:flutter/material.dart';

class ReviewProvider with ChangeNotifier {
  // Future blockchain integration will be added here

  void addReview(String review) {
    // Blockchain-based logic will go here
    notifyListeners();
  }
}
