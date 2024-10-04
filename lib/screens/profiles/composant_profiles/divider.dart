import 'package:flutter/material.dart';

class divider extends StatelessWidget {
  const divider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 0.5,
      color: Colors.grey,
      indent: 10,
      endIndent: 10,
    );
  }
}
