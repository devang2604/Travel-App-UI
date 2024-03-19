import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Phone Verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: mediaQuery.size.height * 0.05,
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.02,
              ),
              Text(
                'We need to register your phone before getting started!',
                style: TextStyle(
                  fontSize: mediaQuery.size.height * 0.03,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.03,
              ),
              SizedBox(),
              Pinput(
                length: 6,
                showCursor: true,
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.02,
              ),
              SizedBox(
                width: mediaQuery.size.width * 0.85,
                height: mediaQuery.size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, 'otp');
                  },
                  child: Text("Verify Phone Number"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        mediaQuery.size.height * 0.01,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'phone', (route) => false);
                    },
                    child: Text(
                      'Edit Phone Number ?',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
