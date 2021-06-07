import 'package:flutter/material.dart';

import 'screens/screens/top_bar.dart';

class HomepageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(
              title: 'Megha Paulson',
              subtitle: 'Developer',
              color: Colors.black,
            ),
            const SizedBox(height: 10,),
            Text(
              'Photography',
               style: TextStyle(
                 fontSize: 22,
                 color: Colors.blue,
                 ),
               )
          ],
        ),
      ),
    );
  }
}

