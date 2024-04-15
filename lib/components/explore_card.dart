import 'package:flutter/material.dart';

class ExploreCard extends StatefulWidget {
  ExploreCard({super.key, required this.data});

  final dynamic data;

  @override
  State<ExploreCard> createState() => _ExploreCardState();
}

class _ExploreCardState extends State<ExploreCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("hello"),
    );
  }
}
