import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:pilotiv_id/pilotiv_id_app.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const PilotivIdApp());
}
