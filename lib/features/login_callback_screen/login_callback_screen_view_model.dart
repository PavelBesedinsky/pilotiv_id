import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pilotiv_id/core/domain/view_models/base_view_model.dart';
import 'package:pilotiv_id/features/login_callback_screen/login_callback_screen_model.dart';

class LoginCallbackScreenViewModel extends BaseViewModel {
  final BuildContext context;
  final GoRouterState state;
  final LoginCallbackScreenModel model;

  LoginCallbackScreenViewModel(this.context, this.state, this.model) {
    if (_isOauthVkRedirect()) {
      _handleOauthVkRedirect();
      return;
    }

    context.go('login');
  }

  bool _isOauthVkRedirect() {
    if (state.uri.queryParameters.isEmpty) {
      return false;
    }

    var stateValue = state.uri.queryParameters['state'];
    if (stateValue != 'vk') {
      return false;
    }

    final codeValue = state.uri.queryParameters['code'];
    if (codeValue == null || codeValue.isEmpty) {
      return false;
    }

    return true;
  }

  void _handleOauthVkRedirect() {
    final codeValue = state.uri.queryParameters['code'];
    if (codeValue == null || codeValue.isEmpty) {
      context.go('login');
      return;
    }

    // TODO: ПДобавить получение token'а от сервиса авторизации.
  }
}
