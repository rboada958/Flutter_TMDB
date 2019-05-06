import 'package:flutter/material.dart';
import 'package:flutter_tmdb/src/models/results.dart';

// ignore: must_be_immutable
class CustomListItem extends StatelessWidget {
  Results _popularResults;

  CustomListItem(this._popularResults);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                FadeInImage.assetNetwork(
                  placeholder: " ",
                  image: _popularResults.getBackDropUrl(),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200.0,
                  fadeInDuration: Duration(milliseconds: 40),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900].withOpacity(0.5),
                    ),
                    constraints: BoxConstraints.expand(height: 55.0),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 250.0,
                        child: Text(
                          _popularResults.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        width: 250.0,
                        padding: EdgeInsets.only(top: 4.0),
                        child: Text(
                          _popularResults.getGenres(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10.0,
                  bottom: 10.0,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(_popularResults.vote_average.toString()),
                          Container(width: 4.0),
                          Icon(Icons.star),
                        ],
                      ),
                      Container(
                        height: 4.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(_popularResults.getReleaseYear().toString()),
                          Container(width: 4.0),
                          Icon(
                            Icons.date_range,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
