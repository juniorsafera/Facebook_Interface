import 'package:facebook_interface_responsive/components/button_circle.dart';
import 'package:facebook_interface_responsive/components/button_profile.dart';
import 'package:facebook_interface_responsive/components/nav_abas.dart';
import 'package:facebook_interface_responsive/models/usuarios.dart';
import 'package:facebook_interface_responsive/others/palette_colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class NavDesktop extends StatelessWidget {

  final Usuario usuario;

  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) ontap;
  const NavDesktop({
     Key? key,
      required this.usuario,
      required this.icones,
      required this.indiceAbaSelecionada,
      required this.ontap,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0,2),
            blurRadius: 4,
          )
        ]
      ),

      child: Row(
        children: [

          Expanded(child: 
          Text('facebook', 
            style: TextStyle(
              color: Palette_Colors.azulFacebook,
              fontWeight: FontWeight.bold,
              fontSize: 32,
              letterSpacing: -1.2,
           ),
           ),
           ),

          Expanded(child: NavegacaoAbas(
            
           icones:  icones,
           indiceAbaSelecionada: indiceAbaSelecionada,
           ontap:  ontap,
           indicadorBaixo: true,
           
     
          ) ,
           ),

          Expanded(child:  Row(
             mainAxisAlignment: MainAxisAlignment.end,
       
            children: [
 
              ButtonProfile(
                usuario: usuario, 
                onTap: (){}),

              
              ButtonCircle(
                icone: Icons.search, 
                iconeTamanho: 30, 
                onPressed: (){}
            ),

              ButtonCircle(
                icone: LineIcons.facebookMessenger, 
                iconeTamanho: 30, 
                onPressed: (){}
            ),
            ],
          ),)

        ],
      ),
      
    );
  }
}