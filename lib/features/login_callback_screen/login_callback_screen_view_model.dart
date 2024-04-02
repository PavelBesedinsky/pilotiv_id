import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pilotiv_id/core/domain/view_models/base_view_model.dart';
import 'package:pilotiv_id/features/login_callback_screen/login_callback_screen_model.dart';

class LoginCallbackScreenViewModel extends BaseViewModel {
  final BuildContext context;
  final GoRouterState state;
  final LoginCallbackScreenModel model;

  LoginCallbackScreenViewModel(this.context, this.state, this.model);
}
