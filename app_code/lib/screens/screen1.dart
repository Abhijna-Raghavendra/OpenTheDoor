import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quadsquad/UI/custom_rectangle.dart';
import 'package:quadsquad/Utils/Authentication.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyGoogleSignIn(),
        child: Builder(
            builder: (context) => ScreenUtilInit(
                builder: () => Drawer(
                    backgroundColor: const Color.fromARGB(255, 255, 221, 238),
                    child: CustomPaint(
                        painter: MyRectangle(),
                        child: Center(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 66.h,
                            ),
                            Text(
                              'YOUR ROOM KEY \n'
                              'AT YOUR FINGERPRINT',
                              style: TextStyle(
                                fontSize: 30.sp,
                                fontFamily: 'Yatra_One',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Image.asset(
                              'assets/screen1.png',
                              width: 267.w,
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            SizedBox(
                              width: 302.w,
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(255, 255, 189, 230)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.w),
                                    ),
                                  ),
                                ),
                                onPressed: () async {
                                  final provider = Provider.of<MyGoogleSignIn>(
                                      context,
                                      listen: false);
                                  await provider.googleLogin();
                                  Navigator.pushReplacementNamed(
                                      context, '/lock');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Login with Google',
                                      style: TextStyle(
                                          fontSize: 23.sp,
                                          fontFamily: 'Roboto',
                                          color: const Color.fromARGB(
                                              450, 23, 22, 22),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 7.w,
                                    ),
                                    Image.asset(
                                      'assets/GOOGLE.png',
                                      width: 42.w,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )))))));
  }
}
