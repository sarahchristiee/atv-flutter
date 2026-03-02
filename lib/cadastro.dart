import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navegacao/homePage.dart';
import 'package:navegacao/login.dart';
import 'package:navegacao/main.dart';
import 'package:navegacao/onboarding1.dart';

class cadastro extends StatefulWidget {
  const cadastro({super.key});

  @override
  State<cadastro> createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 18, 116),
      body:
      Column(
        children: [
          //parte azul com a logo
          Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 7, 18, 116),
            ),
            child: Center(
              child: SvgPicture.asset("assets/logo.svg"),
            )
          ),

          //parte branca
          Expanded(child: 
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),),
            ),
            child: 

            //toda a parte de cadastro
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));}, child: Icon(Icons.arrow_back, size: 40, color: Colors.black,)),
                    SizedBox(width: 10),
                    Text("Cadastre-se", style: GoogleFonts.jost(fontSize: 40, fontWeight: FontWeight.w600),)
                  ],
                ),

                SizedBox(height: 40),

                //Email
                SizedBox(
                  width: 400,
                  child: 
                  TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Insira o seu email",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),),)
                ),

                SizedBox(height: 40),

                //senha
                SizedBox(
                  width: 400,
                  child: 
                  TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                  labelText: "Senha",
                  hintText: "Crie sua senha",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),),)
                ),

                SizedBox(height: 40),

                //confirma
                SizedBox(
                  width: 400,
                  child: 
                  TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                  labelText: "Confirmar Senha",
                  hintText: "Confirme sua senha",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),),)
                ),

                SizedBox(height: 40),

                //botão
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 7, 18, 116),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => onboarding1()));}, child: Text("Cadastrar", style: GoogleFonts.jost(fontSize: 25, color: Colors.white))),
                ),

                // ir pro login
                TextButton( style: TextButton.styleFrom( overlayColor: Colors.transparent,  padding: EdgeInsets.only(top: 30),), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => login()));}, child: Text("Já tem uma conta? Faça Login.", style: GoogleFonts.jost(fontSize: 15, color: const Color.fromARGB(255, 28, 145, 255)))),
                
                SizedBox(height: 80),

                //entrar com outras redes
                Column(
                  children: [
                    Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.black26,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Entrar com", style: GoogleFonts.jost(fontSize: 24 )),
                    ),
                    Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 40),

                  //icones logos
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/google.png",width: 50,height: 50,),
                      Image.asset("assets/facebook.png",width: 70,height: 70,),
                      Image.asset("assets/twitter.png",width: 60,height: 60,),
                    ],
                  )

                  ],
                )
                
              ],
            ),
          ))
          
        ],
      )
    );
  }
}