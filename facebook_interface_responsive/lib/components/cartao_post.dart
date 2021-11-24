import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_responsive/components/imageUser.dart';
import 'package:facebook_interface_responsive/data/data.dart';
import 'package:facebook_interface_responsive/models/posts.dart';
import 'package:facebook_interface_responsive/others/palette_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartaoPost extends StatelessWidget {

  final Post post;
  const CartaoPost({ Key? key,
  required this.post
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(        
         children: [

          // Cabeçalho          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CabecalhoPost(post: post),

              SizedBox(height: 4,),

              Text(post.descricao)
            ],)
            ),


          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage( imageUrl: post.urlImage,),
            ),

          // Área de estatísticas
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: EstatisticasPost(post: post),
            ),
            
       ],)
    );
  }
}


class CabecalhoPost extends StatelessWidget {
  final Post post;
  const CabecalhoPost({ Key? key,
  required this.post,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row (children: [
        ImageUser(
          urlImage: post.usuario.urlImagem,
          visualizado: true,
          ),

          SizedBox(width: 8,),

          Expanded(
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

            Text(
              post.usuario.nome,
               style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
            ),
            ),

            SizedBox(height: 2,),

            Row(
              children: [
                Text(
                "${post.tempoAtras}  ", style: TextStyle(fontSize: 12),
                                  
            ),
                 
                Icon(Icons.public , size: 12, color: Colors.grey[600],),
              ],
            ),
          ],
          
          ),
          ),

          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
           IconButton(onPressed: (){}, icon: Icon(Icons.cancel))
    ],
    );
      
     
  } 
}



    class EstatisticasPost extends StatelessWidget {
      final Post post;
      const EstatisticasPost({ Key? key,
        required this.post,
       }) : super(key: key);
    
      @override
      Widget build(BuildContext context) {
        return Column(
          children: [
            Row(
              children: [
                Container(

                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Palette_Colors.azulFacebook,
                    shape: BoxShape.circle,
                  ),

                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                     ),
                ),

                SizedBox(width: 4,),
              
              Expanded(child: 
              Text(
                "${post.curtidas}",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              )
              ,

              Text(
                "${post.comentarios} comentários",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),

              SizedBox(width: 10,),

              Text(
                "${post.compartilhamentos} compartilhamentos",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              )

              ],
            ),
            Divider(thickness: 1.2,),
            Row(),              
             
          ],
        );
      }
    }