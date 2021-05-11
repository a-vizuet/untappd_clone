import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untappd_clone/ui/homePage.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _showHomePage = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 3));
      setState(() => _showHomePage = true);
    });
    super.initState();
  }

  Widget _body() {
    return Container(
        child: Container(
            alignment: Alignment.center,
            child:  Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Text('Untappd', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
                  CircularProgressIndicator.adaptive(valueColor: AlwaysStoppedAnimation(Colors.green),), 
                ],
            ),
        ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: _showHomePage ? HomePage() : _body()
    );
  }

}
