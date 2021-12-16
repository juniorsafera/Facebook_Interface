import 'package:facebook_interface_responsive/components/imageUser.dart';
import 'package:facebook_interface_responsive/models/usuarios.dart';
import 'package:flutter/material.dart';


class ButtonProfile extends StatelessWidget {

  final Usuario usuario;
  final VoidCallback onTap;
  
  const ButtonProfile({ 
    Key? key,

    required this.usuario,
    required this.onTap,
    
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        children:[
        ImageUser(urlImage: usuario.urlImagem, visualizado: true,),
        SizedBox(width: 4,),
         Flexible(child:  Text(
            usuario.nome, 
            style: TextStyle(
              fontSize: 16),
           overflow: TextOverflow.ellipsis,
              )
              )
      ],
      ),
    );
  }
}