import 'package:flutter/material.dart';

class Mastery extends StatelessWidget {
  final int level;
  final int dificuldade;

  const Mastery({
    required this.level,
    required this.dificuldade,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: (((level >= dificuldade) ? level / dificuldade : 1) >= 10)
            ? Colors.purple
            : Colors.blue,
      ),
      height: 170,
    );
  }
}
