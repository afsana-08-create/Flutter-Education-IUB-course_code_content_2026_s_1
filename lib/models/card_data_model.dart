import 'package:flutter/widgets.dart';

class CardDataModel {
  final String title;
  final String subtitle;

  final IconData? icon;

  CardDataModel({required this.title, required this.subtitle, this.icon});


  @override
  String toString() {
    return "CardDataModel(title: $title, subtitle: $subtitle, icon: $icon)";
  }
}