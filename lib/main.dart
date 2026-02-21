import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/home.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        home: Home(),
      ),
    ),
  );
}