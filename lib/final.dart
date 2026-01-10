import 'package:flutter/material.dart';
import 'entscheidungen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'home.dart';
import 'settings_values.dart';

class answer extends StatefulWidget {
  const answer({super.key});

  @override
  State<answer> createState() => _answerState();
}

class _answerState extends State<answer> {
  @override
  void initState() {
    if (lan_code == "ex") {
      loadLanguage();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Builder(
            builder: (context) {
              var rnd = Random();
              return ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 100),
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          home(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                            return Stack(
                              children: [
                                ScaleTransition(
                                  scale: Tween<double>(begin: 1.0, end: 0.0)
                                      .animate(
                                        CurvedAnimation(
                                          parent: secondaryAnimation,
                                          curve: Curves.easeInOut,
                                        ),
                                      ),
                                  child: const ColoredBox(
                                    color: Colors.lightBlue,
                                  ),
                                ),
                                child,
                              ],
                            );
                          },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.lightBlue,
                  elevation: 0,
                ),
                child: Container(
                  height: 180,
                  width: 400,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Colors.lightBlue,
                        Colors.lightBlue.withOpacity(0.1),
                      ],
                      center: Alignment.center,
                      radius: 0.8,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(0.7),
                        spreadRadius: 40,
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(0.8),
                        spreadRadius: 20,
                        blurRadius: 20,
                        offset: Offset(0, 0),
                      ),
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(0.9),
                        spreadRadius: 20,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Text(
                    lan_code == "en"
                        ? wisdoms_en[rnd.nextInt(wisdoms_en.length)]
                        : wisdoms[rnd.nextInt(wisdoms.length)],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.archivoBlack(
                      fontSize: 30,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
