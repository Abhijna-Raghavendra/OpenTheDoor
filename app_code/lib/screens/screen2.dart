import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:quadsquad/UI/custom_rectangle.dart';

class RoomLock extends StatelessWidget {
  const RoomLock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 255, 221, 238),
      child: CustomPaint(
          painter: MyRectangle(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Text(
                      'ROOM #1234',
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontFamily: 'Yatra_One',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0)),
                Image.asset(
                  'assets/screen2.png',
                  width: 264.w,
                ),
                SizedBox(
                  width: 302.w,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 255, 189, 230)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.w),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/device');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Connect with bluetooth',
                          style: TextStyle(
                              fontSize: 23.sp,
                              fontFamily: 'Roboto',
                              color: const Color.fromARGB(450, 23, 22, 22),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        const Icon(Icons.bluetooth),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Lock',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 189, 230),
                        fixedSize: const Size(120, 55),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Unlock',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(155, 255, 189, 230),
                        fixedSize: const Size(120, 55),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
