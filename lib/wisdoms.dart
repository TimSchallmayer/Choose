import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:typing_text_animation/typing_text_animation.dart';

class wisdoms extends StatefulWidget {
  const wisdoms({super.key});

  @override
  State<wisdoms> createState() => _wisdomsState();
}

class _wisdomsState extends State<wisdoms> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wisdoms()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(0),
                  backgroundColor: Colors.lightBlueAccent,
                  elevation: 15,
                ),
                child: Container(
                  height: 180 * 0.95,
                  width: 180 * 0.95,
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
                      // schwacher, weiter auslaufender Schatten
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(0.7),
                        spreadRadius: 40,
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                      // mittlerer Schatten
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(0.8),
                        spreadRadius: 20,
                        blurRadius: 20,
                        offset: Offset(0, 0),
                      ),
                      // enger, intensiver Schatten direkt um den Button
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
                  child: Center(child: Container(height: 180, width: 180)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
