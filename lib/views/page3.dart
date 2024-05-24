import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Loading',
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: 100,
          itemBuilder: (context, index) {
            return FadeInImage.assetNetwork(
              placeholder: "images/ZKZg.gif",
              image:
                  'https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=600&quality=80',
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
