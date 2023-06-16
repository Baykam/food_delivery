import 'package:flutter/material.dart';

class Ingredients {
  final Map<String, String> text;
  getMenuList(Locale locale) {
    if (text.isEmpty) {
      return 'Sample';
    }
    return text[locale.languageCode];
  }

  Ingredients({required this.text});
}
