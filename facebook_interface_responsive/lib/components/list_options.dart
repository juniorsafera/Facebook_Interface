import 'package:facebook_interface_responsive/components/button_profile.dart';
import 'package:facebook_interface_responsive/models/usuarios.dart';
import 'package:facebook_interface_responsive/others/palette_colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ListOptions extends StatelessWidget {

  final Usuario usuario;
  final List<List> _opcoes = const [
    [LineIcons.userFriends, Palette_Colors.azulFacebook, "Amigos"],
    [LineIcons.facebookMessenger, Palette_Colors.azulFacebook, "Mensagens"],
    [LineIcons.flag, Colors.orange, "Páginas"],
    [LineIcons.users, Palette_Colors.azulFacebook, "Grupos"],
    [Icons.storefront_outlined, Palette_Colors.azulFacebook, "Marketplace"],
    [Icons.ondemand_video, Colors.red, "Assistir"],
    [LineIcons.calendar, Colors.deepPurple, "Eventos"],
    [LineIcons.chevronCircleDown, Colors.black45, "Ver mais"],
  ];

  const ListOptions({ 
    Key? key,
    required this.usuario,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemCount: 1 + _opcoes.length,
        itemBuilder: (context, indice){

          if(indice == 0){
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: ButtonProfile(
                usuario: usuario,
                onTap: (){} 
                      ),
              );
          }

            List item = _opcoes[ indice - 1];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Opcao(
                icone: item[0],
                 cor: item[1], 
                 texto: item[2], 
                onTap: (){}),
              );
        }
        ),
    );
  }
}




class Opcao extends StatelessWidget {

  final IconData icone;
  final Color cor;
  final String texto;
  final VoidCallback onTap;

  const Opcao({ 
    Key? key,

    required this.icone,
    required this.cor,
    required this.texto,
    required this.onTap,

     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        children:[
        Icon(icone, color: cor, size: 35,),
        SizedBox(width: 4,),
         Flexible(child:  Text(
            texto, 
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