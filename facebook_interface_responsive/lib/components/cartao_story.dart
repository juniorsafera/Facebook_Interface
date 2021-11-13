import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_responsive/components/imageUser.dart';
import 'package:facebook_interface_responsive/models/storys.dart';
import 'package:facebook_interface_responsive/others/palette_colors.dart';
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
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: Palette_Colors.degradeStory,
            borderRadius: BorderRadius.circular(12)
          ),
        ),
        Positioned(

          top: 8,
          left: 8,

          child: adicionarStory
            ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.add),
                    color: Palette_Colors.azulFacebook,
                    onPressed: (){},
                  ),
                      )
            : ImageUser(
              urlImage: story.usuario.urlImagem,
              visualizado: story.visualizado,
            ),
        ),

        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child:  Text( adicionarStory ? "Criar Story"  :  story.usuario.nome,
          style: TextStyle(
            color: Colors.white,
            //fontWeight: FontWeight.bold
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          ))
      ],
    );
  }
}