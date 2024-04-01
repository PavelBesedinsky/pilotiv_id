import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pilotiv_id/features/login_screen/login_screen_model.dart';
import 'package:pilotiv_id/features/login_screen/login_screen_web_view.dart';
import 'package:pilotiv_id/features/login_screen/login_screen_web_view_model.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final GoRouterState state;

  const LoginScreen({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginScreenModel>(builder: (_, model, child) {
      return Provider<LoginScreenWebViewModel>(
        create: (_) => LoginScreenWebViewModel(context, state, model),
        dispose: (_, viewModel) => viewModel.dispose(),
        child: const LoginScreenWebView(),
      );
    });
  }
}
