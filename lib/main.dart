import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:navegacao/cadastro.dart';
import 'package:navegacao/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

// 🔵 APP PRINCIPAL
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(), // ✅ agora correto
    );
  }
}

// 🔵 TELA INICIAL COM ANIMAÇÃO
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool showLogo = false;
  bool showButtons = false;

  @override
  void initState() {
    super.initState();

    // Logo aparece primeiro
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        showLogo = true;
      });
    });

    // Botões aparecem depois
    Future.delayed(const Duration(milliseconds: 1200), () {
      setState(() {
        showButtons = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 18, 116),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // 🔥 LOGO ANIMADA
            AnimatedOpacity(
              duration: const Duration(milliseconds: 800),
              opacity: showLogo ? 1 : 0,
              child: AnimatedSlide(
                duration: const Duration(milliseconds: 800),
                offset: showLogo ? const Offset(0, 0) : const Offset(0, -0.3),
                child: SvgPicture.asset(
                  "assets/logo.svg",
                  width: 150,
                ),
              ),
            ),

            const SizedBox(height: 40),

            // 🔥 BOTÕES ANIMADOS
            AnimatedOpacity(
              duration: const Duration(milliseconds: 800),
              opacity: showButtons ? 1 : 0,
              child: AnimatedSlide(
                duration: const Duration(milliseconds: 800),
                offset: showButtons ? const Offset(0, 0) : const Offset(0, 0.3),
                child: Column(
                  children: [

                    // BOTÃO LOGIN
                    buildButton(
                      context,
                      "Login",
                      const login(),
                    ),

                    const SizedBox(height: 30),

                    // BOTÃO CADASTRO
                    buildButton(
                      context,
                      "Cadastro",
                      const cadastro(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String text, Widget page) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          overlayColor: Colors.transparent,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(
          text,
          style: GoogleFonts.jost(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 7, 18, 116),
          ),
        ),
      ),
    );
  }
}