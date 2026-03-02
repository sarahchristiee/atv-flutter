import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  // índice da bottom navigation
  int currentIndex = 0;

  // check dos filtros
  bool incompletoFiltro = false;
  bool completoFiltro = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Minhas Tarefas",
          style: GoogleFonts.jost(
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.filter_list),

                const SizedBox(width: 16),

                // Incompleto
                Row(
                  children: [
                    Checkbox(
                      value: incompletoFiltro,
                      activeColor:
                          const Color.fromARGB(255, 7, 18, 116),
                      onChanged: (value) {
                        setState(() {
                          incompletoFiltro = value ?? false;
                        });
                      },
                    ),
                    const Text("Incompleto"),
                  ],
                ),

                const SizedBox(width: 16),

                // Completo
                Row(
                  children: [
                    Checkbox(
                      value: completoFiltro,
                      activeColor:
                          const Color.fromARGB(255, 7, 18, 116),
                      onChanged: (value) {
                        setState(() {
                          completoFiltro = value ?? false;
                        });
                      },
                    ),
                    const Text("Completo"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      
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