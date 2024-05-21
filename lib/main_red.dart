import 'package:flutter/material.dart';
import 'package:multy_app/config.dart';

import 'app.dart';

void main() {
  CurrentConfig.init(Flavor.red);
  runApp(const MyApp());
}

