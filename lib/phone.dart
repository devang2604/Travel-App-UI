import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryCode = TextEditingController();
  var phone = "";

  @override
  void initState() {
    // TODO: implement initState
    countryCode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
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
              Container(
                height: mediaQuery.size.height * 0.08,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: mediaQuery.size.width * 0.003,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: mediaQuery.size.width * 0.07,
                      child: TextField(
                        controller: countryCode,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.size.width * 0.03,
                    ),
                    Text(
                      '|',
                      style: TextStyle(
                        fontSize: 33,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        phone = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone",
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.02,
              ),
              SizedBox(
                width: mediaQuery.size.width * 0.85,
                height: mediaQuery.size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '${countryCode.text + phone}',
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {},
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                    Navigator.pushNamed(context, 'otp');
                  },
                  child: Text("Send the code"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        mediaQuery.size.height * 0.01,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
