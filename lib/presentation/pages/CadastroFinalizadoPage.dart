import 'package:flutter/material.dart';
import '../widgets/CustomButton.dart';


class CadastroFinalizadoPage extends StatelessWidget {
  const CadastroFinalizadoPage({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryPink = Color(0xFFFF3B5C);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea( 
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight - 80),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                        Row(
                           children: [
                           const CircleAvatar(radius: 5, backgroundColor: primaryPink),
                           Expanded(child: Container(height: 2, color: primaryPink)),
                           CircleAvatar(radius: 5, backgroundColor:  primaryPink),
                           Expanded(child: Container(height: 2, color:  primaryPink)),
                           CircleAvatar(radius: 5, backgroundColor:  primaryPink),
                      ],
                    ),

                      const SizedBox(height: 48),

                      const Text(
                        'Cadastro finalizado com sucesso! Estamos com você nessa jornada de bem estar e liberdade.',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, height: 1.2),
                      ),
                      
                      
                      const Spacer(),
                      
                      CustomButton(
                        text: 'Finalizar',
                        onPressed: () {
                          //home page
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}