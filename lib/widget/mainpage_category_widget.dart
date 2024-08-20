import 'package:flutter/material.dart';

class MainPageCategoryWidget extends StatelessWidget {
  const MainPageCategoryWidget({required this.imageUrl,required this.title});
 final String imageUrl;
 final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
          children: [
           if(imageUrl.isNotEmpty) Image.network(imageUrl),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 8.0),
             child: Text(title),
           ),
          ],
        ),
    );

  }
}
