import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pilotiv_id/features/login/presentation/presentation.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  final GoRouterState state;

  const Login({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginBloc>(
          create: (ctx) => LoginBloc(context, state)..init(),
          dispose: (ctx, bloc) => bloc.dispose(),
        )
      ],
      child: const LoginViewWeb(),
    );
  }
}
