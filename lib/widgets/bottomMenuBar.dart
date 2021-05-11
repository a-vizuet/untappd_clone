import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:untappd_clone/state/appState.dart';

class BottomMenuBar extends StatefulWidget {
  BottomMenuBar({Key key}) : super(key: key);

  _BottomMenuBarState createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  Widget _icon(IconData iconData, int index, String text) {
    var state = Provider.of<AppState>(
      context,
    );
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: AnimatedAlign(
          duration: Duration(seconds: 4),
          curve: Curves.easeIn,
          alignment: Alignment(0, 0),
          child: AnimatedOpacity(
            duration: Duration(seconds: 4),
            opacity: 1,
            child: Column(children: <Widget>[
              IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                padding: EdgeInsets.all(0),
                alignment: Alignment(0, 0),
                icon: Icon(iconData,
                    color: index == state.pageIndex
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).textTheme.caption.color),
                onPressed: () {
                  setState(() => state.setpageIndex = index);
                },
              ),
              Text(
                text,
                style: TextStyle(fontSize: 12, fontWeight: state.pageIndex == index ? FontWeight.w800 : FontWeight.w500),
              )
            ]),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration:
          BoxDecoration(color: Theme.of(context).bottomAppBarColor, boxShadow: [
        BoxShadow(color: Colors.black12, offset: Offset(0, -.1), blurRadius: 2)
      ]),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _icon(Icons.list_outlined, 0, 'Actividad'),
          _icon(Icons.map_outlined, 1, 'Mapas'),
          _icon(Icons.search_outlined, 2, 'Descubrir'),
          _icon(Icons.notifications_outlined, 3, 'Notificaciones'),
          _icon(Icons.perm_identity_outlined, 4, 'Perfil'),
        ],
      ),
    );
  }
}
