import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String urlImage;

  CustomImage({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  final noImage = Image.asset('assets/images/no-image.png',
      color: Colors.white.withOpacity(0.7));

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: urlImage,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => noImage,
    );
  }
}
