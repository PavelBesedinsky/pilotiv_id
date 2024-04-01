import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:pilotiv_id/core/di/injection.dart';
import 'package:pilotiv_id/core/domain/models/pilotiv_id_model.dart';
import 'package:pilotiv_id/pilotiv_id_app.dart';
import 'package:provider/provider.dart';

/// Создание приложения.
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// Инициализация DI.
  configureInjection();

  /// Определение стратегии Url.
  setUrlStrategy(PathUrlStrategy());

  /// Запуск приложения.
  runApp(
    ChangeNotifierProvider(
      create: (_) => injector.get<PilotivIdModel>(),
      child: const PilotivIdApp(),
    ),
  );
}
