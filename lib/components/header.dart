import 'package:choss_media/components/blocs/content/content_bloc.dart';
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
      height: isSmallScreen
          ? MediaQuery.of(context).size.height * 0.05
          : MediaQuery.of(context).size.height * 0.15,
      color: Colors.white30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Image.network(
              '/assets/icon.png',
              height: isSmallScreen
                  ? MediaQuery.of(context).size.height * 0.05
                  : MediaQuery.of(context).size.height * 0.15,
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
                      color: Colors.white,
                      fontSize: isSmallScreen ? 16.0 : 48.0),
                ),
                BlocBuilder(
                  bloc: ContentBloc.getInstance(),
                  builder: (context, ContentState state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        state.icon(),
                        Container(
                          width: 16.0,
                        ),
                        Text(
                          state.contentSelection.toString().split(".").last,
                          style: TextStyle(color: Colors.white,fontSize: isSmallScreen ? 14.0 : 20.0),
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
