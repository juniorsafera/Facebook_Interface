import 'package:facebook_interface_responsive/components/area_story.dart';
import 'package:facebook_interface_responsive/components/button_circle.dart';
import 'package:facebook_interface_responsive/components/cartao_post.dart';
import 'package:facebook_interface_responsive/components/create_post.dart';
import 'package:facebook_interface_responsive/components/list_contacts.dart';
import 'package:facebook_interface_responsive/components/list_options.dart';
import 'package:facebook_interface_responsive/data/data.dart';
import 'package:facebook_interface_responsive/models/posts.dart';
import 'package:facebook_interface_responsive/others/palette_colors.dart';
import 'package:facebook_interface_responsive/others/responsive.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {

    
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TrackingScrollController _scrollController = TrackingScrollController();

  @override
  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
       body: Responsivo(
        mobile: HomeMobile(scrollController: _scrollController,),
        tablet: HomeTablet(scrollController: _scrollController,),
        desktop: HomeDesktop(scrollController: _scrollController,),
      ),
    ),
    );
  }
}


class HomeMobile extends StatelessWidget {

  final TrackingScrollController scrollController;

  const HomeMobile({ 
    Key? key,
    required this.scrollController
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        controller: scrollController,
        slivers: [

          // Área do AppBar
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


          // Área de criação de posts
          SliverToBoxAdapter(
             child: CreatePost(usuario: usuarioAtual,) , 
          ),

           

           // Área de exibição de storys
           SliverPadding(
             padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
             sliver: SliverToBoxAdapter(
                  child: AreaStory(
                    usuario: usuarioAtual,
                    storys: storys,
                  ) ,
             ),
             ),
     

             
          // Área de exibição de posts
           SliverList(
             delegate: SliverChildBuilderDelegate(
               (context, index){
                  Post post = posts[index];

                  return CartaoPost(
                    post: post
                    );
               },
               childCount: posts.length,
             ),
             ),
        ],
      );
  }
}


class HomeTablet extends StatelessWidget {

  final TrackingScrollController scrollController;

  const HomeTablet({ 
    Key? key,
    required this.scrollController
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        controller: scrollController,
        slivers: [

          // Área do AppBar
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


          // Área de criação de posts
          SliverToBoxAdapter(
             child: CreatePost(usuario: usuarioAtual,) , 
          ),

           

           // Área de exibição de storys
           SliverPadding(
             padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
             sliver: SliverToBoxAdapter(
                  child: AreaStory(
                    usuario: usuarioAtual,
                    storys: storys,
                  ) ,
             ),
             ),
     

             
          // Área de exibição de posts
           SliverList(
             delegate: SliverChildBuilderDelegate(
               (context, index){
                  Post post = posts[index];

                  return CartaoPost(
                    post: post
                    );
               },
               childCount: posts.length,
             ),
             ),
        ],
      );
  }
}


class HomeDesktop extends StatelessWidget {

  final TrackingScrollController scrollController;

  const HomeDesktop({
     Key? key,
     required this.scrollController
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        // Coluna 1
        Flexible(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: ListOptions(
              usuario: usuarioAtual
              ),
            )
          ),

        // Espaçamento
        Spacer(),

        // Coluna 2
        Flexible(
          flex: 6,
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
 
          // Área de exibição de storys
           SliverPadding(
             padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
             sliver: SliverToBoxAdapter(
                  child: AreaStory(
                    usuario: usuarioAtual,
                    storys: storys,
                  ) ,
             ),
             ),

          // Área de criação de posts
          SliverToBoxAdapter(
             child: CreatePost(usuario: usuarioAtual,) , 
          ),

            
          // Área de exibição de posts
           SliverList(
             delegate: SliverChildBuilderDelegate(
               (context, index){
                  Post post = posts[index];

                  return CartaoPost(
                    post: post
                    );
               },
               childCount: posts.length,
             ),
             ),
        ],
      )
      ),

        // Espaçamento
        Spacer(),

        // Coluna 3
        Flexible(
          flex: 2,
          child:  Padding(
            padding: EdgeInsets.all(12),
            child: ListContacts(
              usuarios: usuariosOnline
              ),
            )
          )
      ],
    );
  }
}