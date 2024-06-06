import 'package:flutter/material.dart';

class HisMessageBubble2 extends StatelessWidget {
  const HisMessageBubble2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors= Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'BIENVENIDO ESTIMADO CORRELIGIONARIO 🚩',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
