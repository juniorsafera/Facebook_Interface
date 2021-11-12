import 'package:facebook_interface_responsive/models/usuarios.dart';

class Story {
  Usuario usuario ;
  String url;
  bool visualizado;

// construtor
  Story({
    required this.usuario , 
    required this.url , 
      this.visualizado = false,
    });

}