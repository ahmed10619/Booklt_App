// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:precached_network_image/precached_network_image.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: PrecachedNetworkImage(
          fit: BoxFit.fill,
          url: imageUrl,
          width: 0,
          height: 0,
          placeholder: (context, url) => const Icon(Icons.person),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
