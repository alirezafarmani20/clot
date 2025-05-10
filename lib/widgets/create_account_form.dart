import 'package:clot/core/theme/colors.dart';
import 'package:clot/screens/register/forget_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountForm extends StatefulWidget {
  const CreateAccountForm({super.key});

  @override
  State<CreateAccountForm> createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildTextFormField(
                labelText: "First Name",
                validatorMessage: "Please enter your first name",
                regexPattern: r"^[a-zA-Z\u0600-\u06FF]{2,30}$",
                invalidMessage: "Please enter a valid first name",
              ),
              SizedBox(height: 15),
              _buildTextFormField(
                labelText: "Last Name",
                validatorMessage: "Please enter your last name",
                regexPattern: r"^[a-zA-Z\u0600-\u06FF]{2,30}$",
                invalidMessage: "Please enter a valid last name",
              ),
              SizedBox(height: 15),
              _buildTextFormField(
                labelText: "Email Address",
                validatorMessage: "Please enter your email",
                regexPattern: r'^[^@]+@[^@]+\.[^@]+',
                invalidMessage: "Please enter a valid email address",
              ),
              SizedBox(height: 15),
              _buildPasswordField(),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                  ),
                  child: Text(
                    "Continue",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: AppColors.bgLight1),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Forgot Password?", style: TextStyle(fontSize: 17)),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Get.to(() => ForgetPasswordScreen());
                    },
                    child: Text(
                      "Reset",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField({
    required String labelText,
    required String validatorMessage,
    required String regexPattern,
    required String invalidMessage,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorMessage;
        } else if (!RegExp(regexPattern).hasMatch(value)) {
          return invalidMessage;
        }
        return null;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Password",
        labelStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your password";
        }
        return null;
      },
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
