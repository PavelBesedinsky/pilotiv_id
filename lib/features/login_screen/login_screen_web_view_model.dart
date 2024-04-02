import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pilotiv_id/core/domain/view_models/base_view_model.dart';
import 'package:pilotiv_id/core/themes/themes.dart';
import 'package:pilotiv_id/features/login_screen/login_screen_model.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreenWebViewModel extends BaseViewModel {
  final BuildContext context;
  final GoRouterState state;
  final LoginScreenModel model;

  LoginScreenWebViewModel(this.context, this.state, this.model) {
    if (_isOauthVkRedirect()) {
      _handleOauthVkRedirect();
    }
  }

  bool _isOauthVkRedirect() {
    if (state.uri.queryParameters.isEmpty) {
      return false;
    }

    var stateValue = state.uri.queryParameters['state'];
    if (stateValue != 'oauthvk') {
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

    print('Авторизация');
  }

  String _getOauthVkAuthorizeQuery() {
    const clientId = 51890161;
    const display = 'page';
    const redirectUri = 'https://id.pilotiv.keenetic.link/callback';
    const scope = 'email';
    const responseType = 'code';
    const state = 'vk';

    return 'client_id=$clientId&display=$display&redirect_uri=$redirectUri&scope=$scope&response_type=$responseType&state=$state&v=5.131';
  }

  Uri _getOauthVkAuthorizeUri() {
    return Uri.parse(
        'https://oauth.vk.com/authorize?${_getOauthVkAuthorizeQuery()}');
  }

  Uri _getMockOauthVkAuthorizeUri() {
    return Uri.parse(
        'http://192.168.1.100:777/callback?code=714cd535a56a3ede6b&state=oauthvk');
  }

  // Выполнение авторизации.
  Future<void> authorizeVkAsync() async {
    launchUrl(_getMockOauthVkAuthorizeUri(),
        mode: LaunchMode.inAppBrowserView, webOnlyWindowName: '_self');
  }

  final loginCaption = 'Вход';
  final signInCaption = 'Войти';
  final signUpCaption = 'Зарегистрироваться';
  final signInVkCaption = 'Войти c VK ID';

  Color signInVkButtonBackgroundColor() =>
      MaterialTheme.vKTheme.lightHighContrast.color;

  Color signInVkButtonForegroundColor() =>
      MaterialTheme.vKTheme.lightHighContrast.onColor;
}
