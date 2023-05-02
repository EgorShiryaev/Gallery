import 'package:flutter/material.dart';

import 'app.dart';
import 'core/dependency_injection.dart';

void main() {
  dependencyInjection();
  runApp(const App());
}
