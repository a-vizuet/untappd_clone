import 'package:flutter/material.dart';
import 'package:untappd_clone/state/appState.dart';
import 'package:provider/provider.dart';

import 'routes.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(create: (_) => AppState())
      ],
      child: MaterialApp(
          title: 'Untappd Clone',
          theme: ThemeData(
              primarySwatch: Colors.yellow,
          ),
          routes: Routes.route(),
          onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
          onUnknownRoute: (settings) => Routes.onUnknownRoute(settings),
          initialRoute: "SplashPage",
      ),
    );
  }
}
