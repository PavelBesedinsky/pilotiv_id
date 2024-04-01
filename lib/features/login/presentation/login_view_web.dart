import 'package:flutter/material.dart';
import 'package:pilotiv_id/features/login/presentation/presentation.dart';
import 'package:provider/provider.dart';

class LoginViewWeb extends StatefulWidget {
  const LoginViewWeb({super.key});

  @override
  State<LoginViewWeb> createState() => _LoginViewWebState();
}

class _LoginViewWebState extends State<LoginViewWeb> {
  LoginBloc get bloc => Provider.of<LoginBloc>(context, listen: false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Row(
        children: [
          Flexible(
            flex: 4,
            child: Container(),
          ),
          Flexible(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LoginForm(
                  btnTitle: bloc.signIn,
                  onSubmit: () => (),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: LoginBtn(
                    btnTitle: bloc.signInVk,
                    onPressed: bloc.authorizeAsync,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: bloc.signInVkButtonBackgroundColor(),
                      foregroundColor: bloc.signInVkButtonForegroundColor(),
                      shape: elevatedButtonShape,
                      textStyle: elevatedButtonTextStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: LoginBtn(
                    btnTitle: bloc.signUp,
                    onPressed: () => (),
                    style: ElevatedButton.styleFrom(
                      shape: elevatedButtonShape,
                      textStyle: elevatedButtonTextStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(),
          ),
        ],
      ),
    ));
  }
}
