// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:widget_test/model/api_provider.dart';

import 'data/popular_movies.dart';

void main() => runApp(MoviesApp());

class MoviesApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData(
        primarySwatch:Colors.indigo,
      ),
      home:Home( ),
    );
  }
}

class  Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ApiProvider apiProvider = ApiProvider();
  Future<popular_movies> popularMovies;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Movies App'),
      ),
      body:Container(
        margin: EdgeInsets.all(10),
        child: Card(
          child: Container(
            child: Row(

               children:<Widget>[
                Container(
                  child: CachedNetworkImage(
                    width:120,
                    imageUrl:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.forbes.com%2Fsites%2Fscottmendelson%2F2019%2F11%2F22%2Fjoker-dc-films-box-office-700m-oscars-captain-marvel-china-aquaman-spider-man-venom%2F&psig=AOvVaw3V2C8IgsLdFbrfXqN-p0r9&ust=1574654636746000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNDk5uv7geYCFQAAAAAdAAAAABAP'
            ),
          ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                        mainAxisSize:MainAxisSize.min,
                        children:<Widget>[
                          Text('Joker',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600
                          ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          
                          Row(
                            children: <Widget>[
                              Icon(Icons.calendar_today,
                          size: 12,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                              Text('12-12-2012'),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Icon(Icons.star,
                          size: 12,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                              Text('8.5'),
                            ],
                          )
                        ],
                     ),
                  )
                ],
            ),
          ),
        ),
      ),
    );
  }
}
class MovieDetail extends StatelessWidget {
  final Results movie;

  const MovieDetail({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Detail'),
      ),
      body: Container(
        child:Text('Title'),
      ),
      
    );
  }
}
