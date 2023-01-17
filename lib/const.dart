import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

final defaultPinTheme = PinTheme(
  width: 50,
  height: 50,
  textStyle: TextStyle(fontSize: 20, color: Colors.black45, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.black12),
    borderRadius: BorderRadius.circular(10),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Colors.grey[300],
  ),
);