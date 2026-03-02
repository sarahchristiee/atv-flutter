import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navegacao/homePage.dart';
import 'package:navegacao/main.dart';
import 'package:navegacao/onboarding2.dart';

class onboarding1 extends StatefulWidget {
  const onboarding1({super.key});

  @override
  State<onboarding1> createState() => _onboarding1State();
}

class _onboarding1State extends State<onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => onboarding1()));}, child: Icon(Icons.arrow_back, size: 40, color: Colors.black,)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Image.asset("assets/on1.png",width: 400,height: 400,),
          ),
          SizedBox(height: 20),
          Text("Organize seu dia", style: GoogleFonts.jost(fontSize: 40, fontWeight: FontWeight.w700)),

          SizedBox(height: 40),

          Container(
            width: 400,
            child: Text("Planeje tarefas, defina prioridades e mantenha tudo sob controle em um só lugar.", style: GoogleFonts.jost(fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 12,
                height: 12,
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 12,
                height: 12,
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 7, 18, 116),
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => onboarding2()));}, child: Text("Próximo", style: GoogleFonts.jost(color: Colors.white, fontSize: 20)),),
          ),
        ],
      ),
    );
  }
}