import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pilotiv_id/features/login_callback_screen/login_callback_screen_model.dart';
import 'package:pilotiv_id/features/login_callback_screen/login_callback_screen_view.dart';
import 'package:pilotiv_id/features/login_callback_screen/login_callback_screen_view_model.dart';
import 'package:provider/provider.dart';

class LoginCallbackScreen extends StatelessWidget {
  final GoRouterState state;

  const LoginCallbackScreen({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginCallbackScreenModel>(builder: (_, model, child) {
      return Provider<LoginCallbackScreenViewModel>(
        create: (_) => LoginCallbackScreenViewModel(context, state, model),
        dispose: (_, viewModel) => viewModel.dispose(),
        child: const LoginCallbackScreenView(),
      );
    });
  }
}
