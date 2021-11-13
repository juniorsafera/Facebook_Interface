import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_responsive/models/storys.dart';
import 'package:flutter/material.dart';

class CartaoStory extends StatelessWidget {

 final  Story story ;
 final bool adicionarStory;

  const CartaoStory({ Key? key,
  
  required this.story,
  this.adicionarStory = false

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(imageUrl: story.url,
          height: double.infinity,
          width: 110,
          fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}