import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LazyImage extends StatelessWidget {
  const LazyImage(
      {Key? key,
      required this.url,
      this.boxfit = BoxFit.cover,
      this.radius = 16,
      this.aspectRatio = 1 / 1})
      : super(key: key);

  final String url;
  final BoxFit boxfit;
  final double radius;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: CachedNetworkImage(
          imageUrl: url,
          placeholder: (context, url) => Icon(Icons.wifi),
          errorWidget: (context, url, error) => Icon(Icons.error),
          imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  image: DecorationImage(image: imageProvider, fit: boxfit))),
        ),
      ),
    );
  }
}
