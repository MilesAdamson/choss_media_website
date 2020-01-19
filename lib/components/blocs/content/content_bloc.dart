import 'package:choss_media/entries/app_entries/app_entires.dart';
import 'package:choss_media/entries/athlete_entries/athlete_entries.dart';
import 'package:choss_media/entries/photo_entries/photo_entries.dart';
import 'package:choss_media/entries/photo_entries/photo_entry.dart';
import 'package:choss_media/entries/video_entries/video_entries.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ContentSelection { Athletes, Apps, Videos, Photos }

class ContentBloc extends Bloc<ContentEvent, ContentState> {
  static ContentBloc _instance;

  static ContentBloc getInstance() {
    if (_instance == null) {
      _instance = ContentBloc();
      return _instance;
    } else {
      return _instance;
    }
  }

  static void select(ContentSelection selection) =>
      getInstance().add(ContentSelectEvent(contentSelection: selection));

  @override
  ContentState get initialState =>
      ContentSelected(contentSelection: ContentSelection.Photos);

  @override
  Future<void> close() {
    _instance.close();
    super.close();
    return Future.value();
  }

  @override
  Stream<ContentState> mapEventToState(ContentEvent event) async* {
    if (event is ContentSelectEvent) {
      print(state);
      yield ContentChanging(contentSelection: state.contentSelection);
      yield ContentSelected(contentSelection: event.contentSelection);
      print(state);
    }
  }
}

// STATES
abstract class ContentState {
  final ContentSelection contentSelection;

  ContentState({@required this.contentSelection});

  List<Widget> get content;
}

class ContentChanging extends ContentState {
  ContentChanging({@required ContentSelection contentSelection})
      : super(contentSelection: contentSelection);

  @override
  String toString() => 'ContentChanging from $contentSelection';

  @override
  List<Widget> get content => <Widget>[];
}

class ContentSelected extends ContentState {
  ContentSelected({@required ContentSelection contentSelection})
      : super(contentSelection: contentSelection);

  List<Widget> get content {
    switch (contentSelection) {
      case ContentSelection.Photos:
        return photoEntries;
        break;
      case ContentSelection.Athletes:
        return athleteEntries;
        break;
      case ContentSelection.Apps:
        return appEntries;
        break;
      case ContentSelection.Videos:
        return videoEntries;
        break;
      default:
        return <Widget>[];
    }
  }

  @override
  String toString() => 'ContentSelected: $contentSelection';
}

// EVENTS
abstract class ContentEvent {
  final ContentSelection contentSelection;

  ContentEvent({@required this.contentSelection});
}

class ContentSelectEvent extends ContentEvent {
  ContentSelectEvent({@required ContentSelection contentSelection})
      : super(contentSelection: contentSelection);

  @override
  String toString() => 'ContentSelectEvent';
}
