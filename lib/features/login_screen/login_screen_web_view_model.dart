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

  LoginScreenWebViewModel(this.context, this.state, this.model);

  String _getOauthVkAuthorizeQuery() {
    const clientId = 51890161;
    const display = 'page';
    const redirectUri = 'https://id.pilotiv.keenetic.link/callback';
    const scope = 'email';
    const responseType = 'code';

    return 'client_id=$clientId&display=$display&redirect_uri=$redirectUri&scope=$scope&response_type=$responseType&v=5.131';
  }

  Uri _getOauthVkAuthorizeUri() {
    return Uri.parse(
        'https://oauth.vk.com/authorize?${_getOauthVkAuthorizeQuery()}');
  }

  Uri _getMockOauthVkAuthorizeUri() {
    return Uri.parse(
        'http://192.168.1.100:777/callback?code=714cd535a56a3ede6b');
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
