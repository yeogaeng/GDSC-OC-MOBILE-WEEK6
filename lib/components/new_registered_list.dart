import 'package:flutter/material.dart';
import 'package:week5/components/new_registered_bar.dart';

class NewRegisteredList extends StatelessWidget {
  const NewRegisteredList({
    super.key,
    required this.textTitle,
    required this.items,
  });

  final String textTitle;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NewRegisteredBar(textTitle: textTitle),
        const SizedBox(height: 14),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items,
          ),
        )
      ],
    );
  }
}
