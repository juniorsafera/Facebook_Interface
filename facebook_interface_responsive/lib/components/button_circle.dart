import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ButtonCircle extends StatelessWidget {

  // Variáveis 
  final IconData icone;
  final double iconeTamanho;
  final VoidCallback onPressed;


  const ButtonCircle({ Key? key,
      // Construtores
      required this.icone,
      required this.iconeTamanho,
      required this.onPressed,

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              // Personalizando o container
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle 
                ),

                // Propriedades do Button
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(icone),
                  iconSize: iconeTamanho,              
                  color: Colors.black,
                ),
                
                // margem que separa o container
                 margin: EdgeInsets.all(5),

            );
  }
}