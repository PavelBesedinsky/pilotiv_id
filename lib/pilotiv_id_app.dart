import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pilotiv_id/core/themes/themes.dart';

import 'features/login/presentation/presentation.dart';

class PilotivIdApp extends StatelessWidget {
  const PilotivIdApp({super.key});

  @override
  Widget build(BuildContext context) {
    final materialTheme = MaterialTheme(createTextTheme());
    return MaterialApp.router(
        title: 'Pilotiv Client',
        theme: materialTheme.light(),
        darkTheme: materialTheme.dark(),
        themeMode: ThemeMode.light,
        routerConfig: GoRouter(
            // Добавлено для решения проблемы, когда путь сбрасывался после нажатия
            // на любую кнопку
            // https://github.com/flutter/flutter/issues/114597#issuecomment-1345533548
            // initialLocation: Uri.base.toString().replaceFirst(Uri.base.origin, ''),
            routes: <RouteBase>[
              GoRoute(
                  path: '/',
                  builder: (BuildContext context, GoRouterState state) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Home Screen'),
                      ),
                      body: Center(
                        child: ElevatedButton(
                          onPressed: () => context.go('/login'),
                          child: const Text('Go to Login'),
                        ),
                      ),
                    );
                  },
                  routes: <RouteBase>[
                    GoRoute(
                        path: 'login',
                        builder: (BuildContext context, GoRouterState state) {
                          return Login(
                            state: state,
                          );
                        }),
                  ])
            ]));
  }
}
