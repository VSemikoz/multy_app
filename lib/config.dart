import 'package:flutter/material.dart';

enum Flavor { blue, red }

class AppConfig {
  final String appName;
  final String someText;
  final MaterialColor primaryColor;

  const AppConfig({
    required this.appName,
    required this.someText,
    required this.primaryColor,
  });
}

class ConfigVariants {
  static AppConfig blueApp = const AppConfig(
    appName: 'Blue App',
    someText: 'BLUE APP INCOMING',
    primaryColor: Colors.blue,
  );

  static AppConfig redApp = const AppConfig(
    appName: 'Red App',
    someText: 'RED APP INCOMING',
    primaryColor: Colors.red,
  );
}

class CurrentConfig {
  static late AppConfig _configInstance;
  static bool isInit = false;

  static void init(Flavor flavor) {
    if (isInit) return;
    switch (flavor) {
      case Flavor.blue:
        _configInstance = ConfigVariants.blueApp;
      case Flavor.red:
        _configInstance = ConfigVariants.redApp;
    }
    isInit = true;
  }

  static AppConfig getConfig() {
    if (!isInit) return ConfigVariants.redApp;
    return _configInstance;
  }
}
