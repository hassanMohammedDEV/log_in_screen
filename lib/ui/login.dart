import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui/ui/widgets/round_text_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/top.png",
                )
            ),
            Positioned(
              top: 120,
              child: Column(
                children: [
                  Animate(
                    effects: const [FadeEffect(), SlideEffect()],
                    child: const Text('Hello', style: TextStyle(
                        fontSize: 50,fontWeight: FontWeight.bold),),
                  ),
                  const SizedBox(height: 10,),
                  const Text('Sign in to your account',
                  style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(height: 15,),
                  RoundTextField(
                    size: size,
                    hintText: 'UserName',
                    iconData: Icons.person,
                  ),
                  const SizedBox(height: 20,),
                  RoundTextField(
                    isPassword: true,
                    size: size,
                    hintText: 'Password',
                    iconData: Icons.lock,
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: size.width,
                    child: Row(
                      children: [
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 38),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Forgot  your password?',
                                style: TextStyle(color: Colors.grey)),
                              SizedBox(height: size.height /5,),
                              Row(
                                children: [
                                  const Text('Sign in',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                      fontSize: 25)),
                                  const SizedBox(width: 12,),
                                  InkWell(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 3),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: [
                                          Color(0xffF97794),
                                          Color(0xff623AA2),

                                        ]),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: const Icon(Icons.arrow_forward,
                                          color: Colors.white),
                                    ),
                                    onTap: (){},
                                  )
                                ],
                              ),
                            ].animate(interval: .250.seconds).slideX(),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Positioned(
                bottom: 60,
                left: 110,
                child: Text('Don’t have an account? Create')
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/left.png",
                )
            ),
          ],
        ),
      ),
    );
  }
}
