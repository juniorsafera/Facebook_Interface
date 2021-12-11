import 'package:facebook_interface_responsive/components/nav_abas.dart';
import 'package:facebook_interface_responsive/components/nav_desktop.dart';
import 'package:facebook_interface_responsive/others/responsive.dart';
import 'package:facebook_interface_responsive/views/home.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Principal extends StatefulWidget {
  const Principal({ Key? key }) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  List<Widget> _telas = [
    Home(),
    Scaffold(backgroundColor: Colors.green),
    Scaffold(backgroundColor: Colors.amberAccent),
    Scaffold(backgroundColor: Colors.red),
    Scaffold(backgroundColor: Colors.purple),
    Scaffold(backgroundColor: Colors.brown),
  ];


  List<IconData> _icones = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcons.bell,
    Icons.menu
  ];

  int _indiceAbaSelecionada = 0;


  @override
  Widget build(BuildContext context) {

      final bool isDesktop = Responsivo.isDesktop(context);
      Size largura = MediaQuery.of(context).size;


    return  DefaultTabController(
      length: _icones.length, 
      child: Scaffold(
        appBar: isDesktop
                ? PreferredSize(
                  child: NavDesktop(),
                  preferredSize: Size(largura.width, 65)
                  )
                : null ,
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: _telas
          ),
        bottomNavigationBar: isDesktop
                  ? null
                  : NavegacaoAbas(
                    icones: _icones,
                    indiceAbaSelecionada: _indiceAbaSelecionada,
                    ontap: (indice){
                      setState(() {
                        _indiceAbaSelecionada = indice;
                      });
                    },
                  ) ,
        ) 
      );
  }
}