import 'package:flutter/material.dart';

class calendario extends StatefulWidget {
  const calendario({super.key});

  @override
  State<calendario> createState() => _calendarioState();
}

class _calendarioState extends State<calendario> {

  int currentIndex = 1;

  final List<Widget> pages = const [
    Center(child: Text("Home")),
    Center(child: Text("Calendário")),
    Center(child: Text("Perfil")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calendário"),
        centerTitle: true,
      ),

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: const Color.fromARGB(255, 7, 18, 116),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: "Tarefas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: "Calendário",
          ),
        ],
      ),
    );
  }
}