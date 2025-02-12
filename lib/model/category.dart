import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({required this.categoryId, required this.name, required this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

final talkshowCategory = Category(
  categoryId: 1,
  name: "Talkshows",
  icon: Icons.mic,
);

final meetUpCategory = Category(
  categoryId: 2,
  name: "Meetups",
  icon: Icons.location_on,
);

final hackathonCategory = Category(
  categoryId: 3,
  name: "Hackathons",
  icon: Icons.computer,
);

final celebrationCategory = Category(
  categoryId: 4,
  name: "Fest",
  icon: Icons.cake,
);

final categories = [
  allCategory,
  talkshowCategory,
  meetUpCategory,
  hackathonCategory,
  celebrationCategory,
];
