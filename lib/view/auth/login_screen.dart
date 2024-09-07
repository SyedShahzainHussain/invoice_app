import 'package:flutter/material.dart';
import 'package:invoices/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  loginApi() {
    final validate = _formKey.currentState!.validate();
    if (!validate) return;
  }

  forgotPasswordApi() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://limencodesign.co.za/wp-content/uploads/Logo-Design-Featured-Image.jpg"),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width: 380,
                  child: Card(
                    elevation: 4,
                    color: AppColors.cardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text("Welcome back",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              color: AppColors.textColor,
                                              fontWeight: FontWeight.w500)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Enter yours credentials to access your account.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: AppColors.subTextColor,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email is empty";
                                    } else if (!value.contains("@")) {
                                      return "Email is invalid";
                                    } else if (!value.endsWith(".com")) {
                                      return "Email is invalid";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.email_outlined,
                                        color: AppColors.buttonColor,
                                      ),
                                      hintText: "Enter Your Email",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.subTextColor)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Password is empty";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          Icons.lock_outlined,
                                          color: AppColors.buttonColor,
                                        ),
                                        hintText: "Enter Your Password",
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                color:
                                                    AppColors.subTextColor))),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.buttonColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      loginApi();
                                    },
                                    child: Center(
                                      child: FittedBox(
                                        child: Text(
                                          "SIGN IN",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                                  color: Colors.white,
                                                  letterSpacing: 1.2),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  forgotPasswordApi();
                },
                child: Text("Forgot your Password?",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.buttonColor,
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
