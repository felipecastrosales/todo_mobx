import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../stores/login_store.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_text_field.dart';
import 'list_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginStore loginStore;
  late ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    loginStore = Provider.of<LoginStore>(context);
    disposer = reaction((_) => loginStore.loggedIn, (loggedIn) {
      if (loginStore.loggedIn) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const ListScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(24),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Observer(builder: (_) {
                  return CustomTextField(
                    hint: 'E-mail',
                    prefix: const Icon(Icons.account_circle),
                    textInputType: TextInputType.emailAddress,
                    onChanged: loginStore.setEmail,
                    enabled: !loginStore.loading,
                  );
                }),
                const SizedBox(height: 16),
                Observer(
                  builder: (_) {
                    return CustomTextField(
                      hint: 'Senha',
                      prefix: const Icon(Icons.lock),
                      obscure: !loginStore.passwordVisible,
                      onChanged: loginStore.setPassword,
                      enabled: !loginStore.loading,
                      suffix: CustomIconButton(
                        radius: 32,
                        iconData: loginStore.passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        onTap: loginStore.togglePasswordVisibility,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Observer(
                  builder: (_) {
                    return SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          disabledBackgroundColor:
                              Theme.of(context).primaryColor,
                          textStyle: const TextStyle(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                          ),
                        ),
                        onPressed: () {
                          loginStore.loginPressed?.call();
                        },
                        child: loginStore.loading
                            ? const SizedBox.square(
                                dimension: 40,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation(
                                      Colors.white,
                                    ),
                                    strokeWidth: 2,
                                  ),
                                ),
                              )
                            : const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }
}
