import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../widgets/CustomButton.dart';

class VerificacaoCodigoPage extends StatelessWidget {
  const VerificacaoCodigoPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Cor exata aproximada do protótipo
    const primaryPink = Color(0xFFFF3B5C);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        // O SingleChildScrollView resolve o erro de listras amarelas (Overflow)
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(radius: 5, backgroundColor: primaryPink),
                  Expanded(child: Container(height: 2, color: primaryPink)),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey[300]),
                  Expanded(child: Container(height: 2, color: Colors.grey[300])),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey[300]),
                  Expanded(child: Container(height: 2, color: Colors.grey[300])),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey[300]),
                ],
              ),
              const SizedBox(height: 48),

              const Text(
                'Nós encaminhamos um código de verificação no seu e-mail, confirme os dígitos abaixo:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 60),

              // 3. Textos Auxiliares
              Text(
                'Este código nos ajuda a manter a sua conta ainda mais protegida.',
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tempo limite:', style: TextStyle(color: Colors.grey[700])),
                  const Text('3:00', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 100),

              // 4. Pin Code Field (Ajustado para o estilo "Box Clean")
              PinCodeTextField(
                appContext: context,
                length: 4,
                onChanged: (value) {},
                keyboardType: TextInputType.number,
                cursorColor: Colors.grey,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(16),
                  fieldHeight: 64,
                  fieldWidth: 64,
                  borderWidth: 0,
                  activeFillColor: const Color(0xFFF7F7F7),
                  inactiveFillColor: const Color(0xFFF7F7F7),
                  selectedFillColor: const Color(0xFFF2F2F2),
                  activeColor: Colors.transparent,
                  inactiveColor: Colors.transparent,
                  selectedColor: primaryPink.withOpacity(0.2),
                ),
                enableActiveFill: true,
              ),
              const SizedBox(height: 24),

              // 5. Reenviar código
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Reenviar código',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),

              const SizedBox(height: 100),

              CustomButton(
                    text: 'Continuar',
                    onPressed: () {
                    print('');
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}