import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todolist/presentation/ui/register_screen.dart';
import 'package:todolist/presentation/widgets/custom_button.dart';
import 'package:todolist/presentation/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const String routeName = 'login_screen';
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 200,
                  child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Đăng nhập',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ))),
              SizedBox(
                height: 90,
                child: CustomTextField(
                  controller: controllerEmail,
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email_rounded),
                  isHidden: false,
                ),
              ),
              SizedBox(
                height: 90,
                child: CustomTextField(
                  controller: controllerPassword,
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.password_rounded),
                  isHidden: true,
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: CustomButton(
                    nameButton: 'Đăng nhập',
                    onClick: () {
                      print('Đăng nhập');
                    }),
              ),
              const SizedBox(height: 50),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                        text: 'Bạn chưa có tài khoản! ',
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                      text: 'Vui lòng đăng ký tại đây',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RegisterScreen.routeName, (route) => false);
                        },
                      style: TextStyle(
                          color: Colors.blue[400],
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ]),
                ),
              )
            ]));
  }
}
