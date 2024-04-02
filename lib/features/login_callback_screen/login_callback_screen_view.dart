import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginCallbackScreenView extends StatelessWidget {
  const LoginCallbackScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: SpinKitThreeBounce(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                    color: index.isEven
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onPrimary),
              );
            },
          ),
        ),
      ),
    );
  }
}
