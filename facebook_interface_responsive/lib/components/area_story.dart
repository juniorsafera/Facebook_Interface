import 'package:facebook_interface_responsive/components/cartao_story.dart';
import 'package:facebook_interface_responsive/data/data.dart';
import 'package:facebook_interface_responsive/models/storys.dart';
import 'package:facebook_interface_responsive/models/usuarios.dart';
import 'package:flutter/material.dart';

class AreaStory extends StatelessWidget {

  final Usuario usuario;
  final List<Story> storys;

  const AreaStory({ Key? key,

    required this.usuario,
    required this.storys,
  
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
       
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + storys.length, // 1 + 8 = 9
        itemBuilder: (context, indice){

            if(indice == 0){
              Story storyUsuario =
               Story(
                 usuario: usuarioAtual,
                  url: usuarioAtual.urlImagem,
                  
                  );
               
               return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: CartaoStory(
              adicionarStory: true,
              story: storyUsuario,
              
            ),
            );
            }  
 
          Story story = storys [indice - 1];

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: CartaoStory(
              story: story,
            ),
            );
          
        }
       
        ),

         
    );
  }
}