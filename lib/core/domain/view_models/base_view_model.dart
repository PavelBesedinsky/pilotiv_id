import 'package:flutter/material.dart';

/// Базовый класс модели бизнес логики.
abstract class BaseViewModel {
  /// Метод инициализации модели бизнес логики.
  @mustCallSuper
  void init() {}

  /// Метод освобождения ресурсов модели бизнес логики.
  @mustCallSuper
  void dispose() {}
}
