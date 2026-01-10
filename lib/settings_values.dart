import 'package:flutter/material.dart';
import 'package:locale_plus/locale_plus.dart';

String lan_code = "ex";

Future<void> loadLanguage() async {
  lan_code = (await LocalePlus().getLanguageCode())!;
}
