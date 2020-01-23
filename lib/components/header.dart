import 'package:choss_media/content_bloc/content_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Header extends StatelessWidget {
  Header();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        if (MediaQuery.of(context).size.width <= 1080)
          Image.network(
            '/assets/cover_1080.jpg',
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          )
        else
          Image.network(
            '/assets/cover_large.jpg',
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
        chossMediaRow(context, MediaQuery.of(context).size.width < 700),
      ],
    );
  }

  Widget chossMediaRow(BuildContext context, bool isSmallScreen) {
    return Container(
      color: Colors.white30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Image.network(
              '/assets/icon.png',
              height: 100
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Choss Media',
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.black,
                          blurRadius: 4.0,
                        ),
                      ],
                      color: Colors.white,
                      fontSize: isSmallScreen ? 20.0 : 48.0),
                ),
                BlocBuilder(
                  bloc: ContentBloc.getInstance(),
                  builder: (context, ContentState state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 0.5
                                )
                              ]
                            ),
                            child: state.icon(size: isSmallScreen ? 16 : null)),
                        Container(
                          width: isSmallScreen ? 8.0 : 16.0,
                        ),
                        Text(
                          state.contentSelection.toString().split(".").last,
                          style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black,
                                  blurRadius: 4.0,
                                ),
                              ],
                              color: Colors.white,
                              fontSize: isSmallScreen ? 14.0 : 26.0),
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
