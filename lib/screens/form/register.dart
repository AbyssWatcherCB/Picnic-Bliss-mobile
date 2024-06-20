import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:quick_bite/components/form/app_textfield.dart';
import 'package:quick_bite/screens/form/login.dart';
import 'providers/register_providers.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key, this.onTap});

  final void Function()? onTap; 

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final signUpProvider = Provider.of<SignUpProvider>(context);

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Form(
          key: signUpProvider.formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80, height: 80,
                  child: Image.asset('assets/icons/logo.png')
                ),
                const SizedBox(height: 20),
                Text(
                  'Picnic Bliss',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inverseSurface,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Let\'s Create your Account',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inverseSurface,
                  ),
                ),
                const SizedBox(height: 25),
                AppTextfield(
                  textInputAction: TextInputAction.next,
                  controller: signUpProvider.emailController,
                  hintText: 'Email',
                  obscureText: false,
                  validator: signUpProvider.emailValidator,
                ),
                const SizedBox(height: 10),
                AppTextfield(
                  textInputAction: TextInputAction.next,
                  controller: signUpProvider.firstNameController,
                  hintText: 'First Name',
                  obscureText: false,
                  validator: signUpProvider.firstNameValidator,
                ),
                const SizedBox(height: 10),
                AppTextfield(
                  textInputAction: TextInputAction.next,
                  controller: signUpProvider.lastNameController,
                  hintText: 'Last Name',
                  obscureText: false,
                  validator: signUpProvider.lastNameValidator,
                ),
                const SizedBox(height: 10),
                AppTextfield(
                  textInputAction: TextInputAction.next,
                  controller: signUpProvider.phoneNumberController,
                  hintText: 'Phone Number',
                  obscureText: false,
                  validator: signUpProvider.phoneNumberValidator,
                ),
                const SizedBox(height: 10),
                AppTextfield(
                  textInputAction: TextInputAction.next,
                  controller: signUpProvider.passwordController,
                  hintText: 'Password',
                  obscureText: !signUpProvider.isPasswordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      signUpProvider.isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: signUpProvider.togglePasswordVisibility,
                  ),
                  validator: signUpProvider.passwordValidator,
                ),
                const SizedBox(height: 10),
                AppTextfield(
                  textInputAction: TextInputAction.done,
                  controller: signUpProvider.confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: !signUpProvider.isConfirmPasswordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      signUpProvider.isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: signUpProvider.toggleConfirmPasswordVisibility,
                  ),
                  validator: signUpProvider.confirmPasswordValidator,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => signUpProvider.signUp(context),
                  child: const Text('Sign Up'),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    const SizedBox(width: 4),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      ),
                      child: Text(
                        'Login here',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
