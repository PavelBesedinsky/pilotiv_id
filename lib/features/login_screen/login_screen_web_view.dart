import 'package:flutter/material.dart';
import 'package:pilotiv_id/features/login_screen/login_screen_web_view_model.dart';
import 'package:pilotiv_id/features/login_screen/widgets/widgets.dart';
import 'package:provider/provider.dart';

class LoginScreenWebView extends StatefulWidget {
  const LoginScreenWebView({super.key});

  @override
  State<LoginScreenWebView> createState() => _LoginScreenWebViewState();
}

class _LoginScreenWebViewState extends State<LoginScreenWebView> {
  LoginScreenWebViewModel get bloc => Provider.of<LoginScreenWebViewModel>(context, listen: false);

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
                  btnTitle: bloc.signInCaption,
                  onSubmit: () => (),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: LoginBtn(
                    btnTitle: bloc.signInVkCaption,
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
                    btnTitle: bloc.signUpCaption,
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
