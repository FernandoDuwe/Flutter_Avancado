import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImageExample extends StatelessWidget {
  const CachedImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CachedImage"),
      ),
      body: Container(
        width: double.infinity,
        height: 500,
        child: CachedNetworkImage(
          imageUrl: "https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77701918231.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
