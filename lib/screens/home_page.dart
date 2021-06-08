import 'package:flutter/material.dart';

import '../Widgets/top_var.dart';

class HomepageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(
                title: 'Megha Paulson',
                subtitle: 'Developer',
                color: Colors.blue,
              ),
              const SizedBox(height: 10,),
              Text(
                'Photography',
                 style: TextStyle(
                   fontSize: 22,
                   color: Colors.blue,
                   ),
                 ),
                 const SizedBox(height: 10,),
                 GridView.builder(
                   padding: EdgeInsets.all(10),
                   itemCount: 4,
                   shrinkWrap: true,
                   physics: const NeverScrollableScrollPhysics(),
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisSpacing: 10,
                     mainAxisSpacing: 10,
                     crossAxisCount: 2), 
                   itemBuilder: (ctx, index) => Container(
                     child: Image.network(
                        'https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014_960_720.jpg',
                        fit: BoxFit.cover,
                     ),
                   ),
                   )
            ],
          ),
        ),
      ),
    );
  }
}

