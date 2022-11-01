import 'package:flutter/material.dart';

import '../style/colors.dart' as colors;

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: colors.gray04,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Text(
            'Contenter Club',
            style: Theme.of(context).textTheme.headlineMedium,
        )
    );
  }
}