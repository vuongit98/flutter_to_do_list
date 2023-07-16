import 'package:flutter/material.dart';
import 'package:todolist/presentation/widgets/custom_button.dart';
import 'package:todolist/presentation/widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  static const String routeName = '/register_screen';

  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  final TextEditingController controllerPasswordConfirm =
      TextEditingController();
  final TextEditingController controllerNameDisplay = TextEditingController();
  final TextEditingController controllerAddress = TextEditingController();
  final TextEditingController controllerPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('ToDoList'),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                  height: 100,
                  child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Đăng Ký',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ))),
              SizedBox(
                height: 70,
                child: CustomTextField(
                  controller: controllerEmail,
                  inputType: TextInputType.emailAddress,
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email_rounded),
                ),
              ),
              SizedBox(
                height: 70,
                child: CustomTextField(
                  controller: controllerPassword,
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.password_rounded),
                  isHidden: true,
                ),
              ),
              SizedBox(
                height: 70,
                child: CustomTextField(
                  controller: controllerPasswordConfirm,
                  hintText: 'Confirm Password',
                  prefixIcon: const Icon(Icons.password_rounded),
                  isHidden: true,
                ),
              ),
              SizedBox(
                height: 70,
                child: CustomTextField(
                  controller: controllerNameDisplay,
                  hintText: 'Name Display',
                  prefixIcon: const Icon(Icons.account_box_rounded),
                ),
              ),
              SizedBox(
                height: 70,
                child: CustomTextField(
                  controller: controllerAddress,
                  hintText: 'Address',
                  prefixIcon: const Icon(Icons.location_city_rounded),
                ),
              ),
              SizedBox(
                height: 70,
                child: CustomTextField(
                  inputType: TextInputType.phone,
                  controller: controllerPhone,
                  hintText: 'Phone',
                  prefixIcon: const Icon(Icons.phone),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: CustomButton(nameButton: 'Đăng Ký', onClick: () {}),
              ),
            ],
          ),
        ));
  }
}
