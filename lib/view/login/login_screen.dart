import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Container(
      color: Colors.red[100],
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.red[100]!,
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.sp,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Text(
                        "Simplify your business or any thing description...."),
                    SizedBox(
                      height: 40.h,
                    ),
                    const Text("Enter Email"),
                    TextField(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Text("Enter Password"),
                    TextField(
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Sign in"))),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        const Expanded(child: Divider()),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text("OR"),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Expanded(child: Divider())
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 70.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon:
                                SvgPicture.asset("assets/icons/apple_box.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon:
                                SvgPicture.asset("assets/icons/google_box.svg"),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Create account"),
                        TextButton(
                            onPressed: () {}, child: const Text("Sign up"))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
