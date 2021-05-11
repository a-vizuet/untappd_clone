import 'package:flutter/material.dart';
import 'package:untappd_clone/state/appState.dart';
import 'package:untappd_clone/widgets/bottomMenuBar.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _body() {
    return SafeArea(
      child: Container(
        child: _getPage(Provider.of<AppState>(context).pageIndex),
      ),
    );
  }

  Widget _getPage() {

  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenuBar(),
      body: _body()
    );
  }
}
