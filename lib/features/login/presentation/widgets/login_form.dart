import 'package:flutter/material.dart';
import 'package:pilotiv_id/features/login/presentation/widgets/login_btn.dart';
import 'package:pilotiv_id/features/login/presentation/widgets/login_btn_styles.dart';

///
/// Форма логина и пароля.
///
class LoginForm extends StatefulWidget {
  const LoginForm({super.key, required this.btnTitle, this.onSubmit});

  final String btnTitle;
  final VoidCallback? onSubmit;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isPasswordHidden = true;

  void switchPasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            'Привет!',
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              labelText: 'Логин или email',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: TextFormField(
            keyboardType: TextInputType.text,
            obscureText: _isPasswordHidden,
            decoration: InputDecoration(
              labelText: 'Пароль',
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: switchPasswordVisibility,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: LoginBtn(
            btnTitle: widget.btnTitle,
            onPressed: widget.onSubmit,
            style: ElevatedButton.styleFrom(
                shape: elevatedButtonShape, textStyle: elevatedButtonTextStyle),
          ),
        ),
      ],
    ));
  }
}
