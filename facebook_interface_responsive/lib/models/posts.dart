

import 'package:facebook_interface_responsive/models/usuarios.dart';

class Post{

 Usuario usuario ;
 String descricao;
 String tempoAtras;
 String urlImage;
 int curtidas;
 int comentarios;
 int compartilhamentos;

 Post(
   {
     required this.usuario,
     required this.descricao,
     required this.tempoAtras,
     required this.urlImage,
     required this.curtidas,
     required this.comentarios,
     required this.compartilhamentos,
   }
 );


}