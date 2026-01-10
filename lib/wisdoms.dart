import 'package:choose/settings_values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'entscheidungen.dart';
import 'dart:core';
import 'package:ai_typing/ai_typing.dart';
import 'dart:math';
import 'final.dart';

class wisdoms extends StatefulWidget {
  const wisdoms({super.key});

  @override
  State<wisdoms> createState() => _wisdomsState();
}

class _wisdomsState extends State<wisdoms> {
  bool _buttonAktiv = false;
  String _aktuellerText = "";

  @override
  void initState() {
    super.initState();
    _ladeTextMitDelay();
  }

  void _ladeTextMitDelay() {
    var rnd = Random();
    if (lan_code == "ex") {
      loadLanguage();
    }
    _aktuellerText = lan_code == "en"
        ? footerwisdoms_en[rnd.nextInt(footerwisdoms_en.length)]
        : footerwisdoms[rnd.nextInt(footerwisdoms.length)];

    _buttonAktiv = false;
    Future.delayed(
      Duration(seconds: (_aktuellerText.length * 0.1).toInt()),
      () {
        setState(() {
          _buttonAktiv = true;
        });
      },
    );
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
              return ElevatedButton(
                onPressed: _buttonAktiv
                    ? () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    answer(),
                            transitionsBuilder:
                                (
                                  context,
                                  animation,
                                  secondaryAnimation,
                                  child,
                                ) {
                                  return ScaleTransition(
                                    scale: animation,
                                    child: child,
                                  );
                                },
                            transitionDuration: Duration(milliseconds: 100),
                          ),
                        );
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(0),
                  backgroundColor: Colors.lightBlueAccent,
                  elevation: 15,
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
                  child: AiTypingText(
                    Text(
                      "Warnung:\n" + _aktuellerText,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.archivoBlack(
                        fontSize: 30,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
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
