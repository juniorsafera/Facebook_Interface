import 'package:facebook_interface_responsive/models/posts.dart';
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
                
                // lista de Usuários
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

              // Lista de Storys
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


              // lista de Posts
              List<Post> posts = [

              Post(
              usuario: usuariosOnline[0],
              descricao: "Passeio muito legal no final de semana",
              tempoAtras: "20m",
              urlImage: "https://source.unsplash.com/DOb-2jd0sbc/800x600",
              curtidas: 30,
              comentarios: 3,
              compartilhamentos: 5
              ),

              Post(
              usuario: usuariosOnline[1],
              descricao: "Quero compartilhar com você algo que aconteceu...",
              tempoAtras: "40m",
              urlImage: "https://source.unsplash.com/G0H58Z5aPog/800x600",
              curtidas: 30,
              comentarios: 3,
              compartilhamentos: 5
              ),

              Post(
              usuario: usuariosOnline[2],
              descricao: "Não recomendo esse lugar, não fomos bem atendidos",
              tempoAtras: "55m",
              urlImage: "https://source.unsplash.com/1a_u4n02YNo/800x600",
              curtidas: 30,
              comentarios: 3,
              compartilhamentos: 5
              ),

              Post(
              usuario: usuariosOnline[3],
              descricao: 'd' ,
              tempoAtras: "1h",
              urlImage: "https://source.unsplash.com/sfL_QOnmy00/800x600",
              curtidas: 30,
              comentarios: 3,
              compartilhamentos: 5
              ),
               
              Post(
              usuario: usuariosOnline[4],
              descricao: "Preciso de indicações de eletricista, meu chuveiro pifou :)"
              ,
              tempoAtras: "2h",
              urlImage: "https://source.unsplash.com/_tWMmC9CQXQ/800x600",
              curtidas: 30,
              comentarios: 3,
              compartilhamentos: 5
              ),

              Post(
              usuario: usuariosOnline[5],
              descricao: "Que chuva maravilhosa!",
              tempoAtras: "2d",
              urlImage: "https://source.unsplash.com/a4wUKaaMGWQ/800x600",
              curtidas: 30,
              comentarios: 3,
              compartilhamentos: 5
              ),
              
              Post(
              usuario: usuariosOnline[6],
              descricao: "Um dia mais que especial, nos divertimos bastante ;)"  ,
              tempoAtras: "3d",
              urlImage: "https://source.unsplash.com/YS1OOmHAFD0/800x600",
              curtidas: 100,
              comentarios: 30,
              compartilhamentos: 3
              ),

              Post(
              usuario: usuariosOnline[7],
              descricao: "VOCÊ É DO TAMANHO DOS SEUS SONHOS! Lute, persista! ",
              tempoAtras: "3d",
              urlImage: "https://source.unsplash.com/Ng2Hg1YMMuU/800x600",
              curtidas: 230,
              comentarios: 25,
              compartilhamentos: 3
              ),
              
              ];
