import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locale_plus/locale_plus.dart';
import 'wisdoms.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String lan = "de";
  double scale = 1;

  @override
  void initState() {
    super.initState();
    _loadLanguage();
    scale = 1;
  }

  Future<void> _loadLanguage() async {
    final code = await LocalePlus().getLanguageCode();
    if (code != null && mounted) {
      setState(() {
        lan = code;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.from(
          alpha: 1,
          red: 245,
          green: 245,
          blue: 245,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 10),
                  child: ElevatedButton(
                    onPressed: null,
                    child: Container(
                      color: Colors.transparent,
                      child: Icon(Icons.settings),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      surfaceTintColor: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Builder(
                      builder: (context) {
                        return ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        wisdoms(lan: lan),
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
                                transitionDuration: Duration(milliseconds: 10),
                              ),
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
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  (lan == "en" ? "Choose." : "Entscheide."),
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  style: GoogleFonts.archivoBlack(
                                    fontSize: 30,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
