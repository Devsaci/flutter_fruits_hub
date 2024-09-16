import 'package:flutter/material.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem({
    super.key,
    required this.image,
    required this.background,
    required this.subtitle,
    required this.title,
  });

  final String image, background;
  final String subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
