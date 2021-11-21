import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_responsive/components/imageUser.dart';
import 'package:facebook_interface_responsive/models/posts.dart';
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
          Container(color: Colors.amberAccent, width: 100, height: 20,)
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