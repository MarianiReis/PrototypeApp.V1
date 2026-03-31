import 'package:flutter/material.dart';
import 'CadastroFinalizadoPage.dart';
import '../widgets/CustomButton.dart';
import '../widgets/InfoItem.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissaoLocalizacaoPage extends StatelessWidget {
  const PermissaoLocalizacaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    const primaryPink = Color(0xFFFF3B5C);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(radius: 5, backgroundColor: primaryPink),
                  Expanded(child: Container(height: 2, color: primaryPink)),
                  CircleAvatar(radius: 5, backgroundColor:  primaryPink),
                  Expanded(child: Container(height: 2, color: Colors.grey[300])),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey[300]),
                ],
              ),

              const SizedBox(height: 48),

              const Text(
                'Pedido de localização na próxima tela para:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 32),
              const InfoItem(
                icon: Icons.public,
                text: 'Localizar seu dispositivo em tempo real durante as ocorrências, de qualquer lugar que você estiver.',
              ),
              const InfoItem(
                icon: Icons.fingerprint,
                text: 'Colaborar com as autoridades locais para manterem a sua segurança e responderem o seu chamado de forma eficaz.',
              ),
              const InfoItem(
                icon: Icons.person,
                text: 'Oferecer o melhor serviço e garantir que você esteja seguro(a)',
              ),
              const Spacer(),
              CustomButton(
                text: 'Continuar',
                onPressed: () async{
                     await Permission.location.request();
                     if (context.mounted) {
                     Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>  const CadastroFinalizadoPage()), // Próxima tela (finaliza cadastro)
                     );
                 }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
