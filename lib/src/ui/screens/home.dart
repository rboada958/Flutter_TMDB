import 'package:flutter/material.dart';
import 'package:flutter_tmdb/src/ui/screens/popular_movie_list.dart';
import 'package:flutter_tmdb/src/ui/screens/top_rated_movie_list.dart';
import 'package:flutter_tmdb/src/ui/screens/upcoming_movie_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  final _widgetOptions = [
    PopularMovieList(),
    UpcomingMovieList(),
    TopRatedMovieList(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up),
            title: Text("Popular"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            title: Text("Upcoming"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text("Top Rated"),
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
