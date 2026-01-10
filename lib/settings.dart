import 'package:flutter/material.dart';
import 'settings_values.dart';
import 'home.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
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
        backgroundColor: const Color.from(
          alpha: 1,
          red: 245,
          green: 245,
          blue: 245,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Builder(
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => home(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          surfaceTintColor: Colors.transparent,
                          elevation: 0,
                        ),
                        child: Container(
                          color: Colors.transparent,
                          child: Icon(
                            Icons.arrow_back_rounded,
                            size: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownMenu(
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: "en", label: "English"),
                    DropdownMenuEntry(value: "de", label: "Deutsch"),
                  ],
                  onSelected: (value) {
                    lan_code = value!;
                  },
                  label: Text(
                    lan_code == "en"
                        ? "Select a Language:"
                        : "Wähle eine Sprache aus:",
                  ),
                ),
              ],
            ),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
