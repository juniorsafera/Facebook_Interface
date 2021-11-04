import 'package:facebook_interface_responsive/components/button_circle.dart';
import 'package:facebook_interface_responsive/components/create_post.dart';
import 'package:facebook_interface_responsive/data/data.dart';
import 'package:facebook_interface_responsive/others/palette_colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            //expandedHeight: 250,
            floating: true,
            centerTitle: false,

            title: Text('facebook', 
            style: TextStyle(
              color: Palette_Colors.azulFacebook,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              letterSpacing: -1.2,
           ),
           ),
           actions: [

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
          ),
   
          SliverToBoxAdapter(
            child: CreatePost(usuario: usuarioAtual,) , 
          ),
 

            // Widget para testar o conteudo do body
          SliverToBoxAdapter(
            child: Container(color: Colors.grey[200], height: 2500,),
          )


        ],
      ),
    );
  }
}