import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_responsive/others/palette_colors.dart';
import 'package:flutter/material.dart';

class ImageUser extends StatelessWidget {

  final String urlImage;
  final bool visualizado;

  const ImageUser({ Key? key,
      required this.urlImage,
      this.visualizado = false
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: Palette_Colors.azulFacebook,

          child:  CircleAvatar(
          radius: visualizado ? 22 : 19,
          backgroundImage: CachedNetworkImageProvider(urlImage),
          backgroundColor: Colors.grey[200],
              ),
    );
  }
}