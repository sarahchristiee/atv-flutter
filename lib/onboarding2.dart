import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navegacao/homePage.dart';
import 'package:navegacao/onboarding1.dart';
import 'package:navegacao/onboarding2.dart';

class onboarding2 extends StatefulWidget {
  const onboarding2({super.key});

  @override
  State<onboarding2> createState() => _onboarding2State();
}

class _onboarding2State extends State<onboarding2> {
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
            child: Image.asset("assets/on2.png",width: 400,height: 400,),
          ),
          SizedBox(height: 20),
          Text("Foque no que importa", style: GoogleFonts.jost(fontSize: 40, fontWeight: FontWeight.w600)),

          SizedBox(height: 10),

          Container(
            width: 400,
            child: Text("Acompanhe seu progresso e conclua suas tarefas com mais produtividade e menos esforço.", style: GoogleFonts.jost(fontWeight: FontWeight.w700)),
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
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 12,
                height: 12,
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
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
            child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()));}, child: Text("Finalizar", style: GoogleFonts.jost(color: Colors.white, fontSize: 20)),),
          ),
        ],
      ),
    );
  }
}