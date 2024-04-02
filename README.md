### Описание

Изучение и применение [RFC 6749](https://datatracker.ietf.org/doc/html/rfc6749).

#### Запуск сборки проекта
###### Единоразовая сборка проекта.
```dart
flutter packages pub run build_runner build --delete-conflicting-outputs
```
###### Отслеживание изменений.
```dart
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

#### Запуск создания билда
###### Удаление существующей сборки.
```dart
flutter clean
```
###### Неподписанный билд Android.
```dart
flutter build apk --split-per-abi
```
###### Сборка для Web с использование Canvas.
###### Перед вызовом удалить из директории ../build/web/ все файлы.
```dart
flutter build web --web-renderer auto --release --dart-define=FLUTTER_WEB_CANVASKIT_URL=/canvaskit/
--dart-define=serviceWorkerVersion=1 --build-name=0.0.0 --build-number=0
```