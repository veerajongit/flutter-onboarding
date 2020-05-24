import 'package:flutter/material.dart';
import 'package:ui_concept/page/two.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          heightFactor: double.infinity,
          widthFactor: double.infinity,
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return SecondPage();
                    }),
                  );
                },
                child: Hero(
                  tag: 'imageHero',
                  transitionOnUserGestures: true,
                  child: Material(
                    type: MaterialType.transparency, // likely needed
                    child: ClipPath(
                      child: Container(
                        height: 200,
                        width: 100,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(100.0),
                            bottomLeft: const Radius.circular(100.0),
                          ),
                          color: Colors.red,
                        ),
                        margin: const EdgeInsets.only(left: 20.0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 48.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 42,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Let's get started",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
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
}
