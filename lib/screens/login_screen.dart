import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(child: BodyLogin()),
    );
  }
}

class BodyLogin extends StatefulWidget {
  @override
  _BodyLoginState createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  void click() {
    Navigator.popAndPushNamed(context, "/getstarted");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login_img.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(
                "assets/images/logo.jpg",
                height: 150,
              ),
              Text(
                "Welcome back !",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please login to your account.",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.5,
                ),
              )
            ],
          ),

          // Separator

          Padding(
            padding: const EdgeInsets.all(30),
            child: ColoredBox(color: Colors.transparent),
          ),

          // INPUTS

          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: "Email Adress",
                      focusColor: Colors.deepPurple,
                      isCollapsed: true,
                      contentPadding: EdgeInsets.only(
                        bottom: 5.0,
                        left: 10.0,
                        right: 10.0,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(90, 20, 90, 20),
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: "Password",
                      focusColor: Colors.deepPurple,
                      isCollapsed: true,
                      contentPadding: EdgeInsets.only(
                        bottom: 5.0,
                        left: 10.0,
                        right: 10.0,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      // side: BorderSide(color: Colors.purple),
                    ),
                    onPressed: this.click,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Colors.deepPurple[500],
                    splashColor: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(0.7),
                    spreadRadius: 20,
                    blurRadius: 30,
                    offset: Offset(0, -5),
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  // Separator
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Divider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Divider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          loginWith(this.click, 'Google'),
                          loginWith(this.click, 'Facebook')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget loginWith(click, type) {
  return OutlineButton(
    onPressed: click,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
    splashColor: Colors.grey,
    borderSide: BorderSide(color: Colors.grey),
    child: Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage(type == "Google"
                ? 'assets/images/google_logo.png'
                : 'assets/images/fb_logo.png'),
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Sign in with ' + (type),
              style: TextStyle(
                color: Colors.grey,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
