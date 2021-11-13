import 'package:facebook_interface_responsive/models/storys.dart';
import 'package:facebook_interface_responsive/models/usuarios.dart';

/*
              Imagens aleatórias de Usuários 
      https://source.unsplash.com/UJLAMjEjISo/800x600
      https://source.unsplash.com/0wRXAXqIp58/800x600
      https://source.unsplash.com/59HOrlAKTOU/800x600
      https://source.unsplash.com/GXzHGgzraHc/800x600
      https://source.unsplash.com/y8yimL21z8s/800x600
      https://source.unsplash.com/PXWiHU7pbeg/800x600
      https://source.unsplash.com/MS0RHQ1enek/800x600
      https://source.unsplash.com/9ChfwZzv4ys/800x600
      
              Imagens aleatórias de Storys 
      https://source.unsplash.com/JMWjOup32Fk/800x600 
      https://source.unsplash.com/no_TCkPUq_s/800x600
      https://source.unsplash.com/6dX5TPPM34M/800x600
      https://source.unsplash.com/PO7CGnoDFUI/800x600
      https://source.unsplash.com/rewyZqUwAqY/800x600
      https://source.unsplash.com/1HpQU1evGK8/800x600 
      https://source.unsplash.com/W9z_628BBpc/800x600
      https://source.unsplash.com/DOb-2jd0sbc/800x600

      */

// Usuário Logado
Usuario usuarioAtual = Usuario(
    nome: 'Karolayne Marques',
    //urlImagem: 'https://source.unsplash.com/PXWiHU7pbeg/800x600',
    urlImagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyoNYlrXoLLcNSIqz2xYL8xCLKYOKhMtn5vX5q7dUalYsbgGlZkfM4rKjW09uQYwLDGgk&usqp=CAU',
);
 
List<Usuario> usuariosOnline = [
  Usuario(nome: 'Lucilene Souza', urlImagem: 'https://source.unsplash.com/UJLAMjEjISo/800x600'),
  Usuario(nome: 'Fátima Ferreira', urlImagem: 'https://source.unsplash.com/0wRXAXqIp58/800x600'),
  Usuario(nome: 'Daniel Salles', urlImagem: 'https://source.unsplash.com/59HOrlAKTOU/800x600'),
  Usuario(nome: 'Tainara Taylor', urlImagem: 'https://source.unsplash.com/GXzHGgzraHc/800x600'),
  Usuario(nome: 'Dom Savio', urlImagem: 'https://source.unsplash.com/y8yimL21z8s/800x600'),
  Usuario(nome: 'Yudi Gustavo', urlImagem: 'https://source.unsplash.com/MS0RHQ1enek/800x600'),
  Usuario(nome: 'Cibely Santos', urlImagem: 'https://source.unsplash.com/PXWiHU7pbeg/800x600'),
  Usuario(nome: 'Antônio José', urlImagem: 'https://source.unsplash.com/9ChfwZzv4ys/800x600'),
];

List<Story> storys = [

    Story(
      usuario: usuariosOnline[0],
      url: 'https://source.unsplash.com/JMWjOup32Fk/800x600',
      visualizado: true
      ),

      Story(
      usuario: usuariosOnline[1],
      url: 'https://source.unsplash.com/no_TCkPUq_s/800x600',
      visualizado: true
      ),
        
      Story(
      usuario: usuariosOnline[2],
      url: 'https://source.unsplash.com/6dX5TPPM34M/800x600',
      ),

      Story(
      usuario: usuariosOnline[3],
      url: 'https://source.unsplash.com/PO7CGnoDFUI/800x600',
      ),

      Story(
      usuario: usuariosOnline[4],
      url: 'https://source.unsplash.com/rewyZqUwAqY/800x600',
      ),

      Story(
      usuario: usuariosOnline[5],
      url: 'https://source.unsplash.com/1HpQU1evGK8/800x600',
      ),

      Story(
      usuario: usuariosOnline[6],
      url: 'https://source.unsplash.com/W9z_628BBpc/800x600',
      ),

      Story(
      usuario: usuariosOnline[7],
      url: 'https://source.unsplash.com/DOb-2jd0sbc/800x600',
      ),

       
       

       
       
];

