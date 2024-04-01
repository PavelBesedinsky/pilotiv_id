import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pilotiv_id/core/themes/themes.dart';
import 'package:pilotiv_id/core/utils/utils.dart';
import 'package:pilotiv_id/features/login_screen/login_screen_model.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreenWebViewModel extends BaseBloc {
  final BuildContext context;
  final GoRouterState state;
  final LoginScreenModel model;


  LoginScreenWebViewModel(this.context, this.state, this.model);

  // void validatePath() {
  //   if (state.uri.queryParameters.isEmpty) {
  //     context.go('/login');
  //     return;
  //   }
  //
  //   final codeValue = state.uri.queryParameters['code'];
  //   if (codeValue == null || codeValue.isEmpty) {
  //     context.go('/login');
  //     return;
  //   }
  //
  // }

  final url = Uri.parse(
      'https://oauth.vk.com/authorize?client_id=51890161&display=page&redirect_uri=https://client.pilotiv.keenetic.link/login&scope=email&response_type=code&v=5.131');

  // String SignInViaVK = "Вход через ВК";

  // Выполнение авторизации.
  Future<void> authorizeAsync() async {
    launchUrl(url, mode: LaunchMode.inAppBrowserView, webOnlyWindowName: '_self');
  }

  final loginCaption = 'Вход';
  final signInCaption = 'Войти';
  final signUpCaption = 'Зарегистрироваться';
  final signInVkCaption = 'Войти через VK';

  Color signInVkButtonBackgroundColor() => MaterialTheme.vKTheme.lightHighContrast.color;
  Color signInVkButtonForegroundColor() => MaterialTheme.vKTheme.lightHighContrast.onColor;

}
