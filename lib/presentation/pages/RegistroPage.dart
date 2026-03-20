import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../widgets/CustomButton.dart';
import 'VerificacaoCodigoPage.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    var maskCelular = MaskTextInputFormatter(mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});
    var maskRG = MaskTextInputFormatter(mask: '##.###.###-#', filter: {"#": RegExp(r'[0-9]')});

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight - 48), 
                child: IntrinsicHeight( 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(radius: 6, backgroundColor: Colors.pink),
                          const Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                          CircleAvatar(radius: 6, backgroundColor: Colors.grey[300]),
                          const Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                          CircleAvatar(radius: 6, backgroundColor: Colors.grey[300]),
                          const Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                          CircleAvatar(radius: 6, backgroundColor: Colors.grey[300]),
                        ],
                      ),
                      const SizedBox(height: 32),

                      _buildTextField('Nome Completo'),
                      const SizedBox(height: 20),
                      _buildTextField('E-mail'),
                      const SizedBox(height: 20),
                      _buildTextField('Celular', keyboardType: TextInputType.phone, inputFormatters: [maskCelular]),
                      const SizedBox(height: 20),
                      _buildTextField('RG', keyboardType: TextInputType.number, inputFormatters: [maskRG]),
                      const SizedBox(height: 20),
                      _buildTextField('Senha', isPassword: true),
                      
                      const Spacer(), 

                      CustomButton(
                        text: 'Continuar',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const VerificacaoCodigoPage())
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTextField(String label, 
    {TextInputType keyboardType = TextInputType.text,
     List<TextInputFormatter>? inputFormatters,
     bool isPassword = false,
    }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
          ),
        ),

        const SizedBox(height: 8),
        TextField(
          obscureText: isPassword,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF5F8F9),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.pink, width: 1), 
            ),
          ),
        )
      ]
    );
  }

}

