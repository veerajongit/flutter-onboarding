import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'three',
        transitionOnUserGestures: true,
        child: Material(
          type: MaterialType.transparency, // likely needed
          child: Container(
            padding: EdgeInsets.all(50),
            color: Colors.teal[400],
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Great!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textDirection: TextDirection.ltr,
                        ),
                        SizedBox(height: 20),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Your account',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38,
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
                                text: 'was created',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38,
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
                                text: 'successfully!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textDirection: TextDirection.ltr,
                        ),
                        SizedBox(height: 20),
                        Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 60.0,
                        ),
                        SizedBox(height: 60),
                      ],
                    ),
                  ),
                  SizedBox(
                    // padding: const EdgeInsets.symmetric(vertical: 16.0),
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return Scaffold(
                              body: ThirdPage(),
                            );
                          }),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'FINISH',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
