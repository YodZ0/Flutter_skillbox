import 'package:flutter/material.dart';
import 'package:skillbox_navigation_07/pages/artists.dart';
import 'package:skillbox_navigation_07/pages/home_page.dart';
import 'package:skillbox_navigation_07/pages/singer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navgation example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (BuildContext context) {
              return const HomePage();
            });
          case AlbumsPage.routeName:
            return PageRouteBuilder(
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                final tween = Tween(begin: begin, end: end);
                final offsetAnimation = animation.drive(tween);

                return SlideTransition(position: offsetAnimation, child: child);
              },
              pageBuilder: (
                BuildContext context,
                Animation animation,
                Animation secondaryAnimation,
              ) {
                return const AlbumsPage();
              },
            );
          case SingerPage.routeName:
            final args = settings.arguments as Map<dynamic, dynamic>;
            return PageRouteBuilder(
              fullscreenDialog: true,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              pageBuilder: (
                BuildContext context,
                Animation animation,
                Animation secondaryAnimation,
              ) {
                return SingerPage(
                  singerTitle: args['title'],
                  aboutSinger: args['about'],
                );
              },
            );
          default:
            return null;
        }
      },
    );
  }
}
