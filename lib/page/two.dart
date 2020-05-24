import 'package:flutter/material.dart';
import 'package:ui_concept/page/three.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: 'imageHero',
            transitionOnUserGestures: true,
            child: Material(
              type: MaterialType.transparency, // likely needed
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.red,
                padding: EdgeInsets.all(50),
                child: Center(
                  child: ListView(
                    children: <Widget>[
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Create New Account',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 42,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        textDirection: TextDirection.ltr,
                      ),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 30),
                            TextFormField(
                              decoration: const InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black38,
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: 'John Doe',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 22,
                                  )),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: const InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black38,
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 22,
                                  )),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: const InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black38,
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 22,
                                  )),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: const InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black38,
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: 'Confirm Password',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 22,
                                  )),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
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
                                        text: 'Create Account',
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
          Positioned(
            child: Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return Scaffold(
                        body: ThirdPage(),
                      );
                    }),
                  );
                },
                child: Hero(
                  tag: 'three',
                  transitionOnUserGestures: true,
                  child: Material(
                    type: MaterialType.transparency, // likely needed
                    child: Container(
                      width: 100,
                      height: 100,
                      child: CustomPaint(
                          size: Size(200, 200), painter: DrawTriangle()),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawTriangle extends CustomPainter {
  Paint _paint;

  DrawTriangle() {
    _paint = Paint()
      ..color = Colors.teal[400]
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
