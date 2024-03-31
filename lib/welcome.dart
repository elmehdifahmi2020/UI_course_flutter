import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                //color: Colors.amber,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text("Welcome",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,fontFamily: "myfont")),
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset("assets/images/welcome.jpg",width: 300, ),
                    SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text("Get Started",style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold,letterSpacing: 1),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFFF333C)),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))))
                                ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
