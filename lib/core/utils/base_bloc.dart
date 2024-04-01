import 'package:flutter/material.dart';

abstract class BaseBloc {
  /// Метод инициализации блока,вызывается  через провайдер в дереве виджетов при построении ветви дерева.
  @mustCallSuper
  void init() {}

  /// Метод закрытия блока,вызывается при через провайдер в дереве виджетов при стирании ветви дерева
  @mustCallSuper
  void dispose() {}
}