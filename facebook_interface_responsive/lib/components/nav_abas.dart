import 'package:facebook_interface_responsive/others/palette_colors.dart';
import 'package:flutter/material.dart';

class NavegacaoAbas extends StatelessWidget {

  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) ontap;
  final bool indicadorBaixo;

  const NavegacaoAbas({ Key? key,
      required this.icones,
      required this.indiceAbaSelecionada,
      required this.ontap,
      this.indicadorBaixo = false,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: ontap,
      indicator: BoxDecoration(
        border: indicadorBaixo 
                      ? Border(
                bottom: BorderSide(
                  color: Palette_Colors.azulFacebook,
                  width: 3,
                )
              ) 
                      : Border(
                top: BorderSide(
                  color: Palette_Colors.azulFacebook,
                  width: 3,
                )
              )
      ),
      tabs: icones.asMap().map((indice, icone){
        return MapEntry(indice,   Tab(
          icon: Icon(
            icone,
            color: indiceAbaSelecionada == indice
              ? Palette_Colors.azulFacebook
              : Colors.black54,
            size: 30,
        ),
        )
        );
      }).values.toList(),
    );
  }
}