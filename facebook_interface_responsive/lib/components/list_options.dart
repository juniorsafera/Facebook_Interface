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
      /*child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemCount: 1 + _opcoes.length,
        itemBuilder: (context, indice){
            List item = _opcoes[ indice - 1];
        }
        ),*/
    );
  }
}