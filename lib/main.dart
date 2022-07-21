import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:buscadorgifs/ui/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          home: const HomePage(),
          title: "Buscador de Gifs",
          theme: ThemeData(hintColor: Colors.white),
        );
      },
    ),
  );
}
