import 'package:flutter/material.dart';

class Name {
  final Map<String, String> text;

  getText(Locale locale) {
    if (text.isEmpty) {
      return 'Sample';
    }
    return text[locale.languageCode];
  }

  Name({required this.text});
}
