import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/colors.dart' as colors;
import '../style/buttons.dart' as button_styles;
import '../style/fonts.dart' as font_styles;

class MyProposalsWidget extends StatefulWidget {
  const MyProposalsWidget({super.key});

  @override
  State<StatefulWidget> createState() => _MyProposalsWidgetState();
}

class _MyProposalsWidgetState extends State<MyProposalsWidget>{
  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicatorColor: colors.blue,
            labelColor: colors.blue,
            onTap: (index) {
              _changeTab(index);
            },
            tabs: [
              Tab(child: Text('Listed', style: TextStyle(color: colors.blue))),
              Tab(child: Text('Paid', style: TextStyle(color: colors.blue))),
              Tab(child: Text('Rejected', style: TextStyle(color: colors.blue))),
            ]
          ),
        ],
      ),
    );
  }
}