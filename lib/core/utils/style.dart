import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Style {
  static const textFont20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const textFont22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.normal,
  );
  static const textFont32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.normal,
    fontFamily: kGtSectraFine,
  );
  static const textFont15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
  );

  static const textFont17 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );
}
