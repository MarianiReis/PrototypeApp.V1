import 'package:flutter/material.dart';
import '../widgets/CustomButton.dart';
import 'RegistroPage.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                      const Text(
                        'Seja bem vindo(a)! Vamos dar início ao seu cadastro?',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, height: 1.2),
                      ),
                      
                      const SizedBox(height: 40), 
                      
                      _buildInfoItem(Icons.shield_outlined, 'Este é um ambiente seguro e seus dados e informações pessoais serão protegidos'),
                      const SizedBox(height: 30),
                      _buildInfoItem(Icons.contact_mail_outlined, 'Contamos com uma equipe especializada e segurança de ponta a ponta.'),
                      const SizedBox(height: 30),
                      _buildInfoItem(Icons.card_giftcard_outlined, 'Nossa missão é contribuir para o seu bem estar na sua jornada...'),
                      
                      const Spacer(),
                      
                      CustomButton(
                        text: 'Começar',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RegistroPage())
                          );
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

  Widget _buildInfoItem(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 32, color: Colors.black),
        const SizedBox(width: 20), 
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.4),
          ),
        ),
      ],
    );
  }
}